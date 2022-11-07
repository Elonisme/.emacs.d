;;; lyrics-fetcher-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "lyrics-fetcher" "lyrics-fetcher.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from lyrics-fetcher.el

(autoload 'lyrics-fetcher-show-lyrics "lyrics-fetcher" "\
Show lyrics for TRACK.

TRACK can be either a string or an EMMS alist.  If TRACK is not
set, for instance when called interactively, then
`lyrics-fetcher-current-track-method' will be used to get the
current playing track.

By default, opens already saved lyrics file if one exists,
otherwise performs fetch according to
`lyrics-fetcher-current-track-method'.  The resulting file will be
saved with a name from `lyrics-fetcher-format-file-name-method'.

Resulting lyric files are saved to the
`lyrics-fetcher-lyrics-folder' and have the
`lyrics-fetcher-lyrics-file-extension' extension

If SUPPRESS-OPEN is non-nil, don't pop up a window with lyrics.  This
is useful when performing a mass fetch.

If SUPPRESS-SWITCH is non-nil, create a buffer with lyrics but
don't switch to it.

If CALLBACK is non-nil, call it with the resulting filename.

If called with \\[universal-argument] or FORCE-FETCH is non-nil, then
always refetch the lyrics text.

If called with \\[universal-argument] \\[universal-argument] or SYNC
is non-nil, then ask the user to select a matching song.  This may be
useful if there are multiple tracks with similar names, and the top
one isn’t the one required.

If called with \\[universal-argument] \\[universal-argument]
\\[universal-argument] or EDIT is non-nil, edit the search query
in minibuffer before sending.  This is helpful when there is
extra information in the song title which prevents the API from
finding the song.

\(fn &optional TRACK &key SUPPRESS-OPEN SUPPRESS-SWITCH CALLBACK FORCE-FETCH SYNC EDIT)" t nil)

(autoload 'lyrics-fetcher-show-lyrics-query "lyrics-fetcher" "\
Fetch lyrics from a text QUERY.

QUERY should contain everything required to locate the song,
e.g. \"Queen Show Must Go On\".

See `lyrics-fetcher-show-lyrics' for behavior.

\(fn QUERY)" t nil)

(autoload 'lyrics-fetcher-emms-browser-show-at-point "lyrics-fetcher" "\
Fetch data for the current point in the EMMS browser.

If the point contains just one song, it will be fetched the usual way
via `lyrics-fetcher-show-lyrics'.  Lyrics will be shown upon successful
completion.

If the point contains many songs (e.g. it's an album), the lyrics
will be fetched consequentially for every song.  The process stops at
the first failure.

The behavior of the function is modified by \\[universal-argument]
the same way as `lyrics-fetcher-show-lyrics'." t nil)

(autoload 'lyrics-fetcher-emms-browser-fetch-covers-at-point "lyrics-fetcher" "\
Fetch album covers for the current point in the EMMS browser.

If the point contains multiple albums, the covers will be fetched
consequentially for each album.  The process stops at the first
failure.

Requires imagemagick's \"covert\" to be available in PATH.

This requires songs' directories to be grouped by albums, i.e. one
album per one folder.

The files will be saved to the folder with names like
\"cover_small.jpg\", \"cover_med.jpg\", \"cover_large.jpg\".

You can customize the sizes via the `lyrics-fetcher-small-cover-size'
and `lyrics-fetcher-medium-cover-size' variables.

The behavior of the function is modified by \\[universal-argument] the
same way as `lyrics-fetcher-show-lyrics'." t nil)

(autoload 'lyrics-fetcher-emms-browser-open-large-cover-at-point "lyrics-fetcher" "\
Open cover_large for the current point in EMMS browser." t nil)

(register-definition-prefixes "lyrics-fetcher" '("lyrics-fetcher-"))

;;;***

;;;### (autoloads nil "lyrics-fetcher-genius" "lyrics-fetcher-genius.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lyrics-fetcher-genius.el

(register-definition-prefixes "lyrics-fetcher-genius" '("lyrics-fetcher-genius-"))

;;;***

;;;### (autoloads nil nil ("lyrics-fetcher-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lyrics-fetcher-autoloads.el ends here
