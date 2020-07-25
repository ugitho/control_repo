class minecraft {
  file {'/opt/minecraft':
    ensure  => directory,
  }
  file {'/opt/minecraft/server.jar':
    ensire  => file,
    source  => 'https://s3amazonaws.com/Minecraft.Download/version/1.16.1/minecraft_server.1.16.1.jar',
  }
  package {'java':
    ensure  => present,
  }
  file {'/opt/minecraft/eula.txt':
    ensure  => file,
    content => 'eula=true',
  }
  file{'/etc/systemd/system/minecraft.service':
    ensure  => file,
    source  => 'puppet:///modules/minecraft/minecraft.service',
  }
  service {'minecraft':
    ensure  => running,
    enable  => true,
  }
}
