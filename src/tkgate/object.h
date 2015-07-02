/****************************************************************************
    Copyright (C) 1987-2015 by Jeffery P. Hansen

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
****************************************************************************/
#ifndef __object_h
#define __object_h

/** \brief Object manager modes */
typedef enum {
    OM_DISABLED = 0, /** No object management */
    OM_ENABLED,      /** Undoable object management */
    OM_START         /** Start doing object management */
} ob_OMMode_t;

/** \brief Frame flags */
typedef enum {
  FF_TRANSPARENT = 0x1,	/** Transparent frames are not directly visible */
  FF_STICKY      = 0x2,	/** Sticky frames stick together */
  FF_BACKGROUND	 = 0x4	/** Background frames do not clear redo stack */
} FrameFlags_t;

/*******************************************************************************
 * \brief Allocate an undoable object
 *
 * \param s size of the object
 * \param name typename string
 *
 * Allocates memory for an undoable object and tags it with a string for its
 * type.  The string passed is used as is and may not be modified or freed.
 * by the calling program.  The string is only for informational purposes and
 * a null may be passed in its place.
 *
 * Typical usage is:
 *
 * Fooby *f = (Fooby*) ob_malloc(sizeof(Fooby),"Fooby");
 ******************************************************************************/
void *ob_malloc(size_t s,const char *name);

/**
 * Template macro for ob_malloc
 */
#define OM_MALLOC(T) (T*) ob_malloc(sizeof (T), #T)

/*******************************************************************************
 * \brief Undoable object replacement for calloc()
 *
 * \param n number of the instances
 * \param s size of the instance
 * \param name typename for the instances
 *
 * Allocate a known number of similar undoable objects
 ******************************************************************************/
void *ob_calloc(unsigned n,size_t s,const char *name);

/*******************************************************************************
 * \brief Undoable object replacement for realloc()
 *
 * \param vo object to be reallocated
 * \param s new size
 *
 * Reallocate an undoable object
 ******************************************************************************/
void *ob_realloc(void *vo,size_t s);

/*******************************************************************************
 * \brief Undoable object replacement for free()
 *
 * \param vo object to be freed
 *
 * Free an undoable object
 ******************************************************************************/
void ob_free(void *vo);

/*******************************************************************************
 * \brief An "undoable" version of strdup()
 *
 * \param s string to be duplicated
 * \return duplicated string
 *
 * Duplicate a string object
 ******************************************************************************/
char *ob_strdup(const char *s);

/******************************************************************************
 * \brief Initialize object handling
 *
 * Initialize undo/redo object management.  Must be called on program start
 * up before any calls to object handling functions.
 ******************************************************************************/
void ob_init();

/******************************************************************************
 *\brief Set object handling mode
 ******************************************************************************/

void ob_set_mode(ob_OMMode_t m);
/******************************************************************************
 * \brief Get object handling mode
 ******************************************************************************/
ob_OMMode_t ob_get_mode();

void ob_flush_undo();			/* Flush all undo data */
void ob_touch(void*);			/* Mark an object as touched */

void ob_undo(int);			/* Undo all changes in change group */
void ob_redo(int);			/* Redo all changes in change group */
void ob_clear();			/* Clear all undo/redo data */

void ob_begin_frame(const char*);	/* Begin a set of changes */
void ob_begin_framef(const char*,unsigned);	/* Begin a set of changes */
void ob_append_frame(const char*);	/* Append a set of changes */
void ob_suggest_name(const char*);	/* Suggest a new name for current frame */
void ob_end_frame();			/* End a set of changes */
void ob_unstick();			/* Un stick the top undo frame */

int ob_getUndoList(const char **L,int N);	/* Get list of undo commands */
int ob_getRedoList(const char **L,int N);	/* Get list of undo commands */

#endif
