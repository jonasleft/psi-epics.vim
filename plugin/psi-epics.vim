" tutorial:
" http://candidtim.github.io/vim/2017/08/11/write-vim-plugin-in-python.html
" https://blog.semanticart.com/2017/01/05/lets-write-a-basic-vim-plugin/

" save plugin directory path:
let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')


function! PyImports()
PyAny << EOF
import sys
from os.path import normpath, join
import re
import vim
plugin_root_dir = vim.eval('s:plugin_root_dir')
python_root_dir = normpath(join(plugin_root_dir, '..', 'python'))
sys.path.insert(0, python_root_dir)
import epics
EOF
endfunction

" support both python2 and python3:
if has('python')
  command! -nargs=* PyAny python <args>
  call PyImports()
elseif has('python3')
  command! -nargs=* PyAny python3 <args>
  call PyImports()
endif

function! PrintRecord()
  python3 epics.print_records()
endfunction

command! -nargs=0 PrintRecord call PrintRecord()
