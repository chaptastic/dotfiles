" set guifont=Source\ Code\ Pro:h11,Anonymous\ Pro:h12,Andale\ Mono\ Regular:h12,Menlo\ Regular:h12,Consolas\ Regular:h12,Courier\ New\ Regular:h12
set guifont=Consolas\ for\ Powerline:h12,Source\ Code\ Pro:h11,Anonymous\ Pro:h12,Andale\ Mono\ Regular:h12,Menlo\ Regular:h12,Consolas\ Regular:h12,Courier\ New\ Regular:h12

if has("gui_macvim")
    macm File.New\ Tab key=<nop>
    nmap <silent> <D-t> :CtrlP<CR>

    nmap <silent> <D-/> :TComment<CR>
    vmap <silent> <D-/> :TComment<CR>
endif

set transparency=0

set lines=60
