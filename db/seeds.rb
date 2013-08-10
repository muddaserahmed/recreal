# encoding: UTF-8

["No vendor", "LPI", "Cisco", "RedHat", "Microsoft"].each do |l|
  Vendor.create!(:title => "#{l}")
end

["No category", "Linux administration", "Windows administration", "Networks"].each do |l|
  Category.create!(:title => "#{l}")
end

["the only choice", "multiple choice"].each do |l|
  Type.create!(:title => "#{l}")
end

Exam.create(:category_id => 1, :vendor_id => 1, :title => 'Basic Administration Linux', :number => '001-001', :version => "1.0", :pass_score => 60, :time_limit => 2, :description => 'Basic Administration Linux')
Exam.create(:category_id => 2, :vendor_id => 4, :title => 'Second Exam', :number => '002-001', :version => "1.0", :pass_score => 90, :time_limit => 2, :description => 'Windows examination')

["Overall", "Process Management", "The file System", "Access Control", "User Management", "Drivers and the kernel", "Network Connections"].each do |l|
  Section.create!(:exam_id => 1, :title => "#{l}")
end

Question.create(:type_id => 1, :section_id => 1, :title => 'What program can be used to scan the ports of Linux?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 1, :title => 'nmap', :weight => 5)
Answer.create(:question_id => 1, :title => 'iptables', :weight => 0)
Answer.create(:question_id => 1, :title => 'netcat', :weight => 0)
Answer.create(:question_id => 1, :title => 'scanport', :weight => 0)

Question.create(:type_id => 1, :section_id => 3, :title => 'Where in the file system must be in the Linux kernel source?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 2, :title => '/usr/src/linux', :weight => 5)
Answer.create(:question_id => 2, :title => '/linux', :weight => 0)
Answer.create(:question_id => 2, :title => '/lib/linux', :weight => 0)
Answer.create(:question_id => 2, :title => '/home/linux', :weight => 0)

Question.create(:type_id => 1, :section_id => 3, :title => 'Which option will cause fsck to check its file system, as described in the file / etc / fstab?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 3, :title => '-A', :weight => 5)
Answer.create(:question_id => 3, :title => '-a', :weight => 0)
Answer.create(:question_id => 3, :title => '--fstab', :weight => 0)
Answer.create(:question_id => 3, :title => '-f', :weight => 0)

Question.create(:type_id => 1, :section_id => 6, :title => 'Which team used to select the kernel options using ncurses-interface?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 4, :title => 'make menuconfig', :weight => 5)
Answer.create(:question_id => 4, :title => 'make config', :weight => 0)
Answer.create(:question_id => 4, :title => 'make', :weight => 0)
Answer.create(:question_id => 4, :title => 'make xconfig', :weight => 0)

Question.create(:type_id => 1, :section_id => 7, :title => 'How many subnets will be divided into Class C network if the subnet mask 255.255.255.240?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 5, :title => '16', :weight => 5)
Answer.create(:question_id => 5, :title => '2', :weight => 0)
Answer.create(:question_id => 5, :title => '4', :weight => 0)
Answer.create(:question_id => 5, :title => '6', :weight => 0)
Answer.create(:question_id => 5, :title => '8', :weight => 0)
Answer.create(:question_id => 5, :title => '32', :weight => 0)
Answer.create(:question_id => 5, :title => '64', :weight => 0)

Question.create(:type_id => 1, :section_id => 3, :title => 'Which of the following methods can see the mounted file system?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 6, :title => 'mount', :weight => 5)
Answer.create(:question_id => 6, :title => 'cat /proc/mounts', :weight => 5)
Answer.create(:question_id => 6, :title => 'df', :weight => 5)
Answer.create(:question_id => 6, :title => 'showmount', :weight => 0)
Answer.create(:question_id => 6, :title => 'cat /etc/fstab', :weight => 0)
Answer.create(:question_id => 6, :title => 'cat /etc/mtab', :weight => 0)
Answer.create(:question_id => 6, :title => 'shm', :weight => 0)
Answer.create(:question_id => 6, :title => 'mountshow', :weight => 0)

Question.create(:type_id => 1, :section_id => 5, :title => 'What program allows you to change the users password?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 7, :title => 'passwd', :weight => 5)
Answer.create(:question_id => 7, :title => 'gpasswd', :weight => 0)
Answer.create(:question_id => 7, :title => 'usermod', :weight => 0)
Answer.create(:question_id => 7, :title => 'password', :weight => 0)
Answer.create(:question_id => 7, :title => 'chpassword', :weight => 0)

Question.create(:type_id => 1, :section_id => 5, :title => 'What permissions should have a file / etc / shadow?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 8, :title => '-rw-r-----', :weight => 5)
Answer.create(:question_id => 8, :title => '-rw-r--r--', :weight => 0)
Answer.create(:question_id => 8, :title => '-rw-------', :weight => 0)
Answer.create(:question_id => 8, :title => '-rw-rw-r--', :weight => 0)

Question.create(:type_id => 1, :section_id => 1, :title => 'What is the grub bootloader configuration file?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 9, :title => 'grub.conf', :weight => 5)
Answer.create(:question_id => 9, :title => 'grub.cfg', :weight => 0)
Answer.create(:question_id => 9, :title => 'menu.lst', :weight => 0)
Answer.create(:question_id => 9, :title => 'loader.conf', :weight => 0)

Question.create(:type_id => 1, :section_id => 3, :title => 'What program allows you to split your hard drive into partitions (partitions)?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 10, :title => 'fdisk', :weight => 5)
Answer.create(:question_id => 10, :title => 'split', :weight => 0)
Answer.create(:question_id => 10, :title => 'partiotion', :weight => 0)
Answer.create(:question_id => 10, :title => 'prtman', :weight => 0)

Question.create(:type_id => 1, :section_id => 6, :title => 'With what program can obtain information about a kernel module?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 11, :title => 'modinfo', :weight => 5)
Answer.create(:question_id => 11, :title => 'modprobe', :weight => 0)
Answer.create(:question_id => 11, :title => 'lsmod', :weight => 0)
Answer.create(:question_id => 11, :title => 'depmod', :weight => 0)

Question.create(:type_id => 1, :section_id => 3, :title => 'Which option will cause it to mount to mount all the file systems described in the file / etc / fstab?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 12, :title => '-a', :weight => 5)
Answer.create(:question_id => 12, :title => '-A', :weight => 0)
Answer.create(:question_id => 12, :title => '--automount', :weight => 0)
Answer.create(:question_id => 12, :title => '--fstab', :weight => 0)

Question.create(:type_id => 1, :section_id => 3, :title => 'fdisk-l (Select the correct statement)', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 13, :title => 'Shows the partitions on your hard drive', :weight => 5)
Answer.create(:question_id => 13, :title => 'Shows which have hard drives in the system', :weight => 0)
Answer.create(:question_id => 13, :title => 'Such options do not have the fdisk', :weight => 0)
Answer.create(:question_id => 13, :title => 'Shows only the unallocated partition (partition) hard disk space', :weight => 0)

Question.create(:type_id => 1, :section_id => 1, :title => 'What is the configuration file ssh daemon?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 14, :title => 'sshd_config', :weight => 5)
Answer.create(:question_id => 14, :title => 'sshd.conf', :weight => 0)
Answer.create(:question_id => 14, :title => 'sshd.cfg', :weight => 0)
Answer.create(:question_id => 14, :title => 'ssh_config', :weight => 0)

Question.create(:type_id => 1, :section_id => 5, :title => 'The file / etc / shadow is for ...?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 15, :title => 'Storing user password', :weight => 5)
Answer.create(:question_id => 15, :title => 'Store additional information about the user', :weight => 0)
Answer.create(:question_id => 15, :title => 'Storage time of expiry of the user account', :weight => 0)
Answer.create(:question_id => 15, :title => 'Storage of users home directory', :weight => 0)

Question.create(:type_id => 1, :section_id => 7, :title => 'Which of the following subnet mask is a mask for the default for a Class B?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 16, :title => '255.255.0.0', :weight => 5)
Answer.create(:question_id => 16, :title => '127.0.0.0', :weight => 0)
Answer.create(:question_id => 16, :title => '255.255.255.0', :weight => 0)
Answer.create(:question_id => 16, :title => '255.255.255.255', :weight => 0)
Answer.create(:question_id => 16, :title => '255.0.0.0', :weight => 0)

Question.create(:type_id => 1, :section_id => 6, :title => 'Where in the file system are precompiled kernel Linux? (x.x.x - kernel version Linux)', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 17, :title => '/lib/modules/x.x.x/', :weight => 5)
Answer.create(:question_id => 17, :title => '/kernel/modules/x.x.x/', :weight => 0)
Answer.create(:question_id => 17, :title => '/var/lib/modules/x.x.x/', :weight => 0)
Answer.create(:question_id => 17, :title => '/usr/lib/modules/x.x.x/', :weight => 0)

Question.create(:type_id => 1, :section_id => 6, :title => 'What program can remove the module from the kernel Linux?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 18, :title => 'rmmod', :weight => 5)
Answer.create(:question_id => 18, :title => 'lsmod', :weight => 0)
Answer.create(:question_id => 18, :title => 'depmod', :weight => 0)
Answer.create(:question_id => 18, :title => 'delmod', :weight => 0)


Question.create(:type_id => 1, :section_id => 1, :title => 'Which program lets you know which directory the program resides dd?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 19, :title => 'which dd', :weight => 5)
Answer.create(:question_id => 19, :title => 'whereis dd', :weight => 5)
Answer.create(:question_id => 19, :title => 'what dd', :weight => 0)
Answer.create(:question_id => 19, :title => 'whatis dd', :weight => 0)

Question.create(:type_id => 1, :section_id => 6, :title => 'What programs load the kernel module?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 20, :title => 'modprobe', :weight => 5)
Answer.create(:question_id => 20, :title => 'insmod', :weight => 5)
Answer.create(:question_id => 20, :title => 'rmmod', :weight => 0)
Answer.create(:question_id => 20, :title => 'depmod', :weight => 0)
Answer.create(:question_id => 20, :title => 'lsmod', :weight => 0)

Question.create(:type_id => 1, :section_id => 7, :title => 'Which of the following IP addresses can be assigned for use on internal networks?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 21, :title => '10.30.12.1', :weight => 5)
Answer.create(:question_id => 21, :title => '172.18.38.19', :weight => 5)
Answer.create(:question_id => 21, :title => '192.168.24.18', :weight => 5)
Answer.create(:question_id => 21, :title => '194.13.67.85', :weight => 0)
Answer.create(:question_id => 21, :title => '9.1.23.256', :weight => 0)

Question.create(:type_id => 1, :section_id => 6, :title => 'How to view the downloaded kernel modules?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 22, :title => 'lsmod', :weight => 5)
Answer.create(:question_id => 22, :title => 'cat /proc/modules', :weight => 5)
Answer.create(:question_id => 22, :title => 'rmmod', :weight => 0)
Answer.create(:question_id => 22, :title => 'depmod', :weight => 0)
Answer.create(:question_id => 22, :title => 'insmod', :weight => 0)

Question.create(:type_id => 1, :section_id => 3, :title => 'Select all the correct statements', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 23, :title => 'mkfs can create different types of file systems', :weight => 5)
Answer.create(:question_id => 23, :title => 'mkfs can scan the disk surface for bad blocks', :weight => 5)
Answer.create(:question_id => 23, :title => 'mkfs can check the integrity of the file system', :weight => 0)
Answer.create(:question_id => 23, :title => 'For each file system supported by Linux, should be a special version of the mkfs', :weight => 0)

Question.create(:type_id => 1, :section_id => 1, :title => 'What program the kernel starts first when the system boots?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 24, :title => 'init', :weight => 5)
Answer.create(:question_id => 24, :title => 'grub', :weight => 0)
Answer.create(:question_id => 24, :title => 'lilo', :weight => 0)
Answer.create(:question_id => 24, :title => 'systemv', :weight => 0)
Answer.create(:question_id => 24, :title => 'upstart', :weight => 0)

Question.create(:type_id => 1, :section_id => 3, :title => 'Select all the correct statements', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 25, :title => 'A file system can be checked using fsck, when it is not mounted', :weight => 5)
Answer.create(:question_id => 25, :title => 'A file system can be checked using fsck, when it is mounted as ro', :weight => 5)
Answer.create(:question_id => 25, :title => 'When the file system is mounted as rw, it can be checked with fsck, but only in exceptional circumstances', :weight => 5)
Answer.create(:question_id => 25, :title => 'When the file system is mounted as rw, it can not be checked with fsck', :weight => 0)

Question.create(:type_id => 1, :section_id => 1, :title => 'What are the similarities between the various distributions of Linux?', :difficult => 4, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 26, :title => 'core', :weight => 5)
Answer.create(:question_id => 26, :title => 'server software', :weight => 0)
Answer.create(:question_id => 26, :title => 'Gnome or KDE', :weight => 0)
Answer.create(:question_id => 26, :title => 'custom software', :weight => 0)

Question.create(:type_id => 1, :section_id => 1, :title => 'Which of the following parameters can be passed to the kernel to boot into single-user mode?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 27, :title => 'single', :weight => 5)
Answer.create(:question_id => 27, :title => 'init=1', :weight => 0)
Answer.create(:question_id => 27, :title => 'singleuser', :weight => 0)
Answer.create(:question_id => 27, :title => 'root', :weight => 0)

Question.create(:type_id => 1, :section_id => 1, :title => 'Which team can see the list of devices on the PCI bus?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 28, :title => 'lspci', :weight => 5)
Answer.create(:question_id => 28, :title => 'ls pci', :weight => 0)
Answer.create(:question_id => 28, :title => 'ls | grep pci', :weight => 0)
Answer.create(:question_id => 28, :title => 'pcimodules', :weight => 0)

Question.create(:type_id => 1, :section_id => 1, :title => 'As you can see the status of the use of RAM and virtual memory?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 29, :title => 'free', :weight => 5)
Answer.create(:question_id => 29, :title => 'cat /proc/meminfo', :weight => 5)
Answer.create(:question_id => 29, :title => 'usage', :weight => 0)
Answer.create(:question_id => 29, :title => 'memusage', :weight => 0)
Answer.create(:question_id => 29, :title => 'df', :weight => 0)
Answer.create(:question_id => 29, :title => 'memory', :weight => 0)
Answer.create(:question_id => 29, :title => 'show memory', :weight => 0)
Answer.create(:question_id => 29, :title => 'ram', :weight => 0)
Answer.create(:question_id => 29, :title => 'mem', :weight => 0)

Question.create(:type_id => 1, :section_id => 1, :title => 'As can be called the first hard disk in GNU / Linux?', :difficult => 5, :allow_mix => true, :explanation => '')
Answer.create(:question_id => 30, :title => '/dev/sda', :weight => 5)
Answer.create(:question_id => 30, :title => '/dev/hda', :weight => 5)
Answer.create(:question_id => 30, :title => '/boot/hda', :weight => 0)
Answer.create(:question_id => 30, :title => '/dev/mbr', :weight => 0)

