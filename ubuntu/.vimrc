if filereadable(".vimconfig")
	source .vimconfig
endif

set nu
set tabstop=4
set autoindent
syntax on

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags=tags;/

let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_Auto_Open=1
map <C-F9> :TlistToggle<cr> 

set nocp
filetype plugin on

" using command line 'cscope -Rbq' to generate the cscope.out file
set cscopequickfix=s-,c-,d-,i-,t-,e-
"cs add /home/bbs/ajaxhe-share/dvs_project/boardcode/cscope.out /home/bbs/ajaxhe-share/dvs_project/boardcode
map <C-F10> :cs add cscope.out ./<cr>
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

