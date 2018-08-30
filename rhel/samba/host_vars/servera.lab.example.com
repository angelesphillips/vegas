smb_share_dir: /shared/school
smb_share_name: westwood
smb_share_desc: Westwood School Files
smb_share_group: school
samba_users: 
  - name: mike
    groups: school
    smb_password: redhat
  - name: cande
    groups: school
    smb_password: miguel
