import keyring

remote_folders = [
    "[Gmail]/All Mail",
    "[Gmail]/Sent Mail",
    "[Gmail]/Spam",
    "[Gmail]/Starred",
    "[Gmail]/Trash",
    "[Gmail]/Drafts",
    "Bacn",
    "Software Regs"
]

local_folders = [
    "all_mail",
    "sent_mail",
    "spam",
    "starred",
    "trash",
    "drafts",
    "bacn",
    "software_regs"
]

local_to_remote_dict = dict(zip(local_folders, remote_folders))
remote_to_local_dict = dict(zip(remote_folders, local_folders))

def local_to_remote(mb):
    return local_to_remote_dict.get(mb, mb)

def remote_to_local(mb):
    return remote_to_local_dict.get(mb,mb)
