 if v:vim_did_enter                                                        
  silent !./open.sh &
else                                                                      
  autocmd VimEnter * silent !./open.sh &
endif

autocmd BufWritePost * silent !./build.sh
