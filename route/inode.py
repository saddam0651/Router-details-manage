import os

# check inode


def check_inode():
    st = os.statvfs(path)
    free  = (st.f_bavail * st.f_frsize) / 1024
    total = (st.f_blocks * st.f_frsize) / 1024
    used  = ((st.f_blocks - st.f_bfree) * st.f_frsize) / 1024
    total_inode = st.f_files        # inodes 
    free_inode = st.f_ffree   #free inodes 
    print(total_inode, free_inode)