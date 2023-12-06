/*
 * Library: libcrc
 * File:    precalc/precalc.c
 * Author:  Lammert Bies
 *
 * This file is licensed under the MIT License as stated below
 *
 * Copyright (c) 2008-2016 Lammert Bies
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Description
 * -----------
 * The source file precalc/precalc.c contains routines to generate the lookup
 * tables for the CRC values at compile time. The tables are stored in include
 * files which are then included by the CRC routine source files
 */

#include <inttypes.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "precalc.h"

#define TYPE_CRC32		1
#define TYPE_CRC64		2

/*
 * Functions in this source file with local scope
 */

static int	generate_table( const char *typename, const char *filename );

/*
 * Internal table to store the CRC lookup table
 */

uint64_t	crc_tab_precalc[256];

/*
 * int main( int argc, char *argv[] );
 *
 * Precalc is a commandline utility that is called from the Makefile to
 * generate the lookup tables for the CRC routines. Generating these tables at
 * compile time is much more efficient than doing it at runtime. Most compilers
 * will be able to optimize the routines more when the tables are guaranteerd
 * to be constant than when they have been generated on the fly as variable
 * tables.
 */

int main( int argc, char *argv[] ) {

	int retval;

	if ( argc != 3 ) {

		fprintf( stderr, "\nusage: precalc --type file\n" );
		fprintf( stderr, "       where --type is any of --crc64\n\n" );

		exit( 1 );
	}

	retval = generate_table( argv[1], argv[2] );

	exit( retval );

}  /* main (libcrc precalc) */

/*
 * static int generate_table( const char *typename, const char *filename );
 *
 * The function generate_table() generates a CRC lookup table of a specified
 * type and stores the generated output in a file. If the function succeeds the
 * value 0 is returned. Another value is an indication of failure and that
 * value is used as the exit value of the program.
 */

static int generate_table( const char *typename, const char *filename ) {

	int a;
	int type;
	int bits;
	FILE *fp;
	const char *tabname;

	if ( typename == NULL  ||  filename == NULL ) {

		fprintf( stderr, "\nprecalc: Internal pointer error\n\n" );
		return 2;
	}

	if      ( ! strcmp( typename, "--crc64" ) ) type = TYPE_CRC64;
	else if ( ! strcmp( typename, "--crc32" ) ) type = TYPE_CRC32;
	else {

		fprintf( stderr, "\nprecalc: Unknown table type \"%s\" passed\n\n", typename );
		return 3;
	}

	tabname = NULL;
	bits    = 1;

	switch ( type ) {

		case TYPE_CRC32 : init_crc32_tab(); tabname = "crc_tab32"; bits = 32; break;
		case TYPE_CRC64 : init_crc64_tab(); tabname = "crc_tab64"; bits = 64; break;
	}

#if defined(_MSC_VER)
	fp = NULL;
	fopen_s( &fp, filename, "w" );
#else
	fp = fopen( filename, "w" );
#endif
	if ( fp == NULL ) {

		fprintf( stderr, "\nprecalc: cannot open \"%s\" for writing\n\n", filename );
		return 0;
	}

	fprintf( fp, "/*\n" );
	fprintf( fp, " * Library: libcrc\n" );
	fprintf( fp, " * File:    %s\n", filename );
	fprintf( fp, " * Author:  Auto generated by the precalc program\n" );
	fprintf( fp, " *\n" );
	fprintf( fp, " * PLEASE DO NOT CHANGE THIS FILE!\n" );
	fprintf( fp, " * ===============================\n" );
	fprintf( fp, " * This file was automatically generated and will be overwritten whenever the\n" );
	fprintf( fp, " * library is recompiled. All manually added changes will be lost in that case.\n" );
	fprintf( fp, " */\n\n" );

	fprintf( fp, "const uint%d_t %s[256] = {\n", bits, tabname );

	for (a=0; a<256; a++) {

		switch ( bits ) {

			case  8 : fprintf( fp, "\t0x%02"  PRIX8  "\x75",   (uint8_t)  (crc_tab_precalc[a] & 0x00000000000000FFull) ); break;
			case 16 : fprintf( fp, "\t0x%04"  PRIX16 "\x75",   (uint16_t) (crc_tab_precalc[a] & 0x000000000000FFFFull) ); break;
			case 32 : fprintf( fp, "\t0x%08"  PRIX32 "\x75l",  (uint32_t) (crc_tab_precalc[a] & 0x00000000FFFFFFFFull) ); break;
			case 64 : fprintf( fp, "\t0x%016" PRIX64 "\x75ll",             crc_tab_precalc[a]                          ); break;
		}
		if ( a < 255 ) fprintf( fp, ",\n" );
		else           fprintf( fp, "\n" );
	}

	fprintf( fp, "};\n\n" );

	fclose( fp );

	return 0;

}  /* generate_table */
