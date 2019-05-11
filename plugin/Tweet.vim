if exists('g:loaded_Tweet')
    finish
endif
let g:loaded_Tweet = 1

let s:save_cpo = &cpo
set cpo&vim
command! -nargs=0 Tweet call Tweet#Post()
command! -nargs=0 TweetEdit call Tweet#Edit()
command! -nargs=0 Reply call Tweet#Reply()
command! -nargs=* TweetLook call Tweet#Look(<f-args>)


let &cpo = s:save_cpo
unlet s:save_cpo
