smb_share_name: westwood
smb_share_dir: /shared/pusd/{{ smb_share_name }}
smb_share_desc: Westwood Elementary School Files
smb_share_group: wwes
samba_users: 
  - name: maribel
    full_name: Maribel Carrasco
    groups: xploration,wwes
    smb_password: redhat
  - name: cande
    full_name: Candelaria Angeles
    groups: xploration,wwes
    smb_password: redhat
samba_group_perms: 
  - name: school
    name_type: group
    perms: rx
    default: true
  - name: pusd
    name_type: group
    perms: rx
    default: true
  - name: xploration
    name_type: group
    perms: rwx
    default: true
  - name: mike
    name_type: user
    perms: rx
    default: false
