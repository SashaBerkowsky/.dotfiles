/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int centered = 1;                    /* -c option; centers dmenu on screen */
static int min_width = 250;                    /* minimum width when centered */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"IosevkaNerdFont:size=10"
};
static const char uns_background[]       = "#222222";
static const char uns_foreground[]       = "#FCB5B5";
static const char sel_foreground[]       = "#FCDDF2";
static const char sel_background[]        = "#C52233";
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { uns_foreground, uns_background },
	[SchemeSel] = { sel_foreground, sel_background },
	[SchemeOut] = { sel_foreground, sel_background },
};
/* -l and -g options; controls number of lines and columns in grid if > 0 */
static unsigned int lines      = 10;
static unsigned int columns    = 1;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
