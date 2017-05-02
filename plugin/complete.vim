" $Id$
" Name Of File: |n|
"
"  Description: Vim plugin
"
"       Author: Ivan Carlos S. Lopes <lopesivan (at) poli (dot) com (dot) br>
"   Maintainer: Ivan Carlos S. Lopes <lopesivan (at) poli (dot) com (dot) br>
"
"  Last Change: $Date:$
"      Version: $Revision:$
"
"    Copyright: This script is released under the Vim License.
"

if &cp || exists("g:loaded_headercomplete")
    finish
endif

let g:loaded_headercomplete = "v01"
let s:keepcpo  = &cpo
set cpo&vim

"set dictionary=~/.vim/bundle/hp50g/words.txt
" ----------------------------------------------------------------------------

"" Get the hp50g sheets list
"let s:hp50g_sheets =
"\ system("cat ".g:vim_path.'/bundle/hp50g/words.txt')
"
"
"function Completehp50g(findstart, base)
"
"    if !exists('g:vim_path')
"        return
"    endif
"
"    if !exists('g:hp50gFile')
"        let g:hp50gFile = 'words.txt'
"    endif
"
"    if a:findstart
"
"        " locate the start of the word
"        let line  = getline('.')
"        let start = col('.') - 1
"
"        while start > 0 && line[start - 1] =~ '\a'
"                let start -= 1
"        endwhile
"
"        return start
"    else
"        " find headers names matching with "a:base"
"        let res = []
"
"        " we read contactlist file and sort the result
"        for line in sort(readfile(expand(g:vim_path). '/bundle/hp50g/'.g:hp50gFile))
"            if line =~ '^' . a:base
"
"                let hp50g = split(line, '#')
"
"                " show names in list, but insert hp50g address
"                call add(res, {'word': hp50g[1],
"                \ 'abbr': hp50g[0].' | '.hp50g[1],
"                \ 'icase': 1} )
"            endif
"        endfor
"
"        return res
"    endif
"endfunction
"
"if exists('*Completehp50g()')
"    setlocal omnifunc=Completehp50g
"endif

" ----------------------------------------------------------------------------
let &cpo=s:keepcpo
unlet s:keepcpo

" vim: ts=4
