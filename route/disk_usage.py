import shutil

# python script for disk usage
# Path
path = "/route"
stat = shutil.disk_usage(path)

# Print disk usage statistics
print("Disk usage statistics:", stat)
