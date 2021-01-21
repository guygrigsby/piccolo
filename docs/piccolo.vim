piccolo.txt It's the 80s and there are lasers.


                  _               _
                 (_)             | |
            _ __  _  ___ ___ ___ | | ___
           | '_ \| |/ __/ __/ _ \| |/ _ \
           | |_) | | (_| (_| (_) | | (_) |
           | .__/|_|\___\___\___/|_|\___/
           | |
           |_|
A Vim plugin for those of us who never got the laser background school photos..

==============================================================================
CONTENTS                                                       *piccolo-contents*

    1. Usage ........................... |PiccoloUsage|
    2. Mappings ........................ |PiccoloMappings|
        2.1 Refresh .................... |PiccoloRefresh|
        2.2 Pipe ....................... |PiccoloPipe|
    3. Configuration ................... |PiccoloConfiguration|
        3.1 g:clam_autoreturn .......... |PiccoloConfiguration_autoreturn|
        3.2 g:clam_winpos .............. |PiccoloConfiguration_winpos|
        3.3 g:clam_winheight ........... |PiccoloConfiguration_winheight|
        3.4 g:clam_winwidth ............ |PiccoloConfiguration_winwidth|
    4. License ......................... |PiccoloLicense|
    5. Bugs ............................ |PiccoloBugs|
    6. Contributing .................... |PiccoloContributing|
    7. Changelog ....................... |PiccoloChangelog|

==============================================================================
1. Usage                                                           *PiccoloUsage*

The :Piccolo command is your point of entry to Piccolo.  Use it to run a shell
command like this: >

    :Piccolo ls -l

This will open up a new vertical split with the results of the command in it.
You can edit the text in this split like any other buffer.

When you close the buffer with :quit or something similar Piccolo will place your
cursor back in the split you came from.

The :Piccolo command can take a range.  If given, the lines will be passed to the
command on standard input.  For example, this will open a Piccolo output window
with the contents of the current buffer sorted: >

    :%Piccolo sort

This will pipe the first ten lines of the file into the python command: >

    :1,10Piccolo python

To pipe visually selected text you can use the :PiccoloVisual command: >

    :PiccoloVisual sort | uniq -c | sort -n

When you've got some text visually selected and hit : to enter the command,
Vim will add the '<,'> range by default.  You can backspace it out if you want
(or use <c-u>), but you don't have to: PiccoloVisual will work fine with or
without it.

In other words, the following commands do the same thing: >

    :PiccoloVisual wc -c
    :'<,'>PiccoloVisual wc -c

You might want to set up your own mappings to make Piccolo easier to use.  The
author has something like this in his .vimrc: >

    nnoremap ! :Piccolo<space>
    vnoremap ! :PiccoloVisual<space>

That's Piccolo in a nutclamshell.

==============================================================================
2. Mappings                                                     *PiccoloMappings*

Piccolo also defines two special mappings in the command output window for your
convenience.

------------------------------------------------------------------------------
2.1 Refresh                                                      *PiccoloRefresh*

Bound to: <localleader>r

"Refresh" the output by running the command again.

This is useful for commands where the output might change frequently and you
want to watch it in real time.

------------------------------------------------------------------------------
2.2 Pipe                                                            *PiccoloPipe*

Bound to: <localleader>p

"Pipe" the buffer through another command and replace the contents with its
result.

This allows you to run a shell pipeline where you can manually inspect and
massage the intermediate results.

==============================================================================
3. Configuration                                           *PiccoloConfiguration*

You can configure the following settings to change how Piccolo works.

------------------------------------------------------------------------------
3.1 g:clam_autoreturn                           *PiccoloConfiguration_autoreturn*

Set this to 0 to disable the "return to the last buffer you were in on closing
the output window" behavior: >

    let g:clam_autoreturn = 0

This can be useful if you use :bprevious (which can cause Vim to crash when
autoreturning).

Default: 1 (autoreturn is on)

------------------------------------------------------------------------------
3.2 g:clam_winpos                                   *PiccoloConfiguration_winpos*

This option controls where to open output window: >

    let g:clam_winpos = 'topleft'

See the following topics for more information: |:vertical|, |:aboveleft|,
|:belowright|, |:topleft|, and |:botright|.

Default: 'vertical botright' (split vertical, open at far right)

------------------------------------------------------------------------------
3.3 g:clam_winheight                             *PiccoloConfiguration_winheight*

This option controls the height of the output window: >

    let g:clam_winheight = 5

Default: no value (split at 50%)

------------------------------------------------------------------------------
3.4 g:clam_winwidth                               *PiccoloConfiguration_winwidth*

This option controls the width of the output window: >

    let g:clam_winwidth = 5

Default: no value (split at 50%)

==============================================================================
4. License                                                       *PiccoloLicense*

Piccolo is MIT/X11 licensed.

==============================================================================
5. Bugs                                                             *PiccoloBugs*

If you find a bug please post it on the issue tracker:
http://github.com/sjl/clam.vim/issues/

==============================================================================
6. Contributing                                             *PiccoloContributing*

Think you can make this plugin better?  Awesome!

Email a patch to steve@stevelosh.com or send a pull request.

Mercurial: https://hg.stevelosh.com/clam.vim/
GitHub:    https://github.com/sjl/clam.vim/

==============================================================================
7. Changelog                                                   *PiccoloChangelog*

v1.4.0
    * Added g:clam_winheight and g:clam_winwidth settings (thanks jethrovt).
    * Don't highlght ANSI color codes more often than needed (thanks LnL7).
    * Improved highlighting for hg status output.
v1.3.0
    * Added support for custom syntax highlighting for commands (thanks to Ümit
      Kablan).
    * Preliminary syntax files for pacman and hg commands.
v1.2.0
    * Added support for ranges in the :Piccolo command.
    * Added the :PiccoloVisual command.
    * Added the g:clam_winpos option.
v1.1.0
    * Added the g:clam_autoreturn setting.
v1.0.0
    * Initial stable release.

==============================================================================
