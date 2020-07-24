class profile::ssh_server {
  package {'openssh-server':
          ensure  => present,
  }
  service { 'sshd':
          ensure  => 'running',
          enable  => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
          ensure  => present,
          user    => 'root',
          type    => 'ssh-rsa',
          key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBuzy02cEWZbAQ79pXjjHHi3mT3cqsXRB5E0efHDfUEBKjuaYiCb8SL7lWm1/8V5hiPEmeJB45rcilC1fhyWfNEJGIeX1ptmAApdwX2oERJK2NqHB1Fo3FzF+b9t4M3kI1npCzvV0dXtMhrlk8dGw2h0mbdAQNviN/RjhpUhW8jn7uDNTzvXeakfyUIJPxv6uJcB8AnZnJXJpsJFy0LEk9KliaNYFhgy8og0ldG25Kf5+AM+TEd4NhMrhHMMTG1RP3nRW1iQTEe8O2CEyAsKaAhEZkhX2AtetXigqvLewlX3G8/rIqhV6FEWmB3UO2m51y8pK6r01CXdBD5U1TDK/r',
  }
}
