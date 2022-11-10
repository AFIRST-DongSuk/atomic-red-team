import bz2

path = '/etc/passwd'
result_path = '/tmp/passwd'
with open(path,'rb') as f_in:
    with bz2.open(result_path +'.bz2','wb') as f_out:
        f_out.writelines(f_in)

