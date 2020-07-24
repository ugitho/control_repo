class profile::agent_node {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  host {'web.puppet.vn':
    ensure  => present,
    ip      => '172.18.0.2',
  }
  host {'db.puppet.vn':
    ensure  => present,
    ip      => '172.18.0.3',
  }
}
