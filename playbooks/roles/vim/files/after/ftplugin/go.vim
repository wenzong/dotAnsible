setlocal noexpandtab
setlocal nosmarttab
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=0

set nolist
let g:go_fmt_command = "goimports"

" https://github.com/fatih/vim-go-tutorial#beautify-it
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

" tips
let g:go_auto_type_info = 1

" TODO mappings
" + dif yif
" + CTRL-] CTRL-t
" + GoAddTags GoRemoveTags
" + GoImpl
" + GoImplements GoCallees GoReferrers
" + GoDecls GoDeclsDir

" let g:go_metalinter_autosave = 1
" let g:go_metalinter_autosave_enabled = ['vet', 'golint']
" let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
" let g:go_metalinter_command = "golangci-lint"
