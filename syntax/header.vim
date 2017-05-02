" Vim syntax file
" Language:	C
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2016 Nov 18

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" Read the C syntax to start with
runtime! syntax/c.vim

let b:current_syntax = "header"

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=8
