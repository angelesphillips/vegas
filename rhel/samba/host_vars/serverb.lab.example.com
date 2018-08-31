smb_share_name: stoneranch
smb_share_dir: /shared/pusd/{{ smb_share_name }}
smb_share_desc: Stone Ranch Elementary School Files
smb_share_group: sres
samba_users: 
  - name: nam
    full_name: Nam Ngo
    groups: xploration,sres
    smb_password: redhat
  - name: bernardo
    full_name: Bernardo Campos
    groups: xploration,sres
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
