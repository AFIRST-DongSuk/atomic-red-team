# -*- coding:utf-8 -*-

import gzip

path = '/etc/passwd'
result_path = '/tmp/passwd'
with open(path,'rb') as f_in:
    with gzip.open(result_path +'.gz','wb') as f_out:
        f_out.writelines(f_in)
