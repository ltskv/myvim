iabbrev <buffer> inp import numpy as np
iabbrev <buffer> ipl import matplotlib.pyplot as plt
iabbrev <buffer> ipd import pandas as pd
iabbrev <buffer> inm if __name__ == '__main__'
iabbrev <buffer> itf import tensorflow as tf
iabbrev <buffer> sex raise SystemExit
iabbrev <buffer> ddf HERE = os.path.abspath(os.path.dirname(__file__))

nnoremap <buffer> <localleader>x :term python %<cr>

nnoremap <buffer> <localleader>ba :PudbAddBreakpoint<cr>
nnoremap <buffer> <localleader>bd :PudbDeleteBreakpoint<cr>
nnoremap <buffer> <localleader>bs :PudbShowBreakpoints<cr>
nnoremap <buffer> <localleader>bh :PudbHideBreakpoints<cr>
