smb_share_dir: /shared/school
smb_share_name: stoneranch
smb_share_desc: Stone Ranch School Files
smb_share_group: sres
samba_users: 
  - name: nam
    groups: sres
    smb_password: redhat
  - name: cande
    groups: sres
    smb_password: password
