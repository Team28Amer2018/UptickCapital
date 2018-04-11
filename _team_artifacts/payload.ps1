# This requires Powershell Core 6.0! Tested and working on Windows 2012 R2

$date = Get-Date -Uformat %y-%m-%d_%H-%M-%S

    $body = @"
{
  "spec": {
    "application_name": "Jenkins AutoBuild $date",
    "app_profile_reference": {
      "kind": "app_profile",
      "uuid": "e4c3f601-58e5-742f-c7ac-42c0b9353dd8"
    },
    "resources": {
      "service_definition_list": [
        {
          "port_list": [],
          "singleton": false,
          "name": "APACHE_PHP",
          "action_list": [
            {
              "critical": false,
              "type": "system",
              "uuid": "0e77aaba-4db0-96ca-5f58-82d6f0056f87",
              "name": "action_create",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "4c351f94-28ff-2d7a-5f4a-3fd814aa0d5b"
                    },
                    "name": "4a586530_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "bce521aa-6692-39ad-0806-af91d4724ef4"
                  }
                ],
                "name": "06b9eb97_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "bce521aa-6692-39ad-0806-af91d4724ef4"
                },
                "uuid": "aade072d-a55a-d3d2-393d-fed7f7f939c2"
              }
            },
            {
              "critical": false,
              "type": "system",
              "uuid": "2aad3557-a296-07d5-df89-a7ad5e5b222a",
              "name": "action_delete",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "4c351f94-28ff-2d7a-5f4a-3fd814aa0d5b"
                    },
                    "name": "267541ef_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "e61575ce-845d-665e-be03-8ba53d81222d"
                  }
                ],
                "name": "7c130343_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "e61575ce-845d-665e-be03-8ba53d81222d"
                },
                "uuid": "64d5f122-cdb3-8a59-5bea-5a6306f0a9aa"
              }
            },
            {
              "critical": false,
              "type": "system",
              "uuid": "d15c7d23-182b-75a6-148a-7a6d1eea9ad5",
              "name": "action_start",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "4c351f94-28ff-2d7a-5f4a-3fd814aa0d5b"
                    },
                    "name": "660bc4ae_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "28059a22-1514-c149-7587-745dc4756619"
                  }
                ],
                "name": "b37be184_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "28059a22-1514-c149-7587-745dc4756619"
                },
                "uuid": "82ef2b05-f234-805a-e3eb-971302cc0d7d"
              }
            },
            {
              "critical": false,
              "type": "system",
              "uuid": "9158cef2-4f07-015e-66ec-2d19131293a0",
              "name": "action_stop",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "4c351f94-28ff-2d7a-5f4a-3fd814aa0d5b"
                    },
                    "name": "fef3eaca_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "9662f866-d9ec-9294-a221-8a504e11d878"
                  }
                ],
                "name": "bc80ef55_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "9662f866-d9ec-9294-a221-8a504e11d878"
                },
                "uuid": "e99bcd7f-8d9a-2847-fe75-829c7963ccab"
              }
            },
            {
              "critical": false,
              "type": "system",
              "uuid": "a4a6e0ab-eaac-3c30-c238-e277f3c28169",
              "name": "action_restart",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "4c351f94-28ff-2d7a-5f4a-3fd814aa0d5b"
                    },
                    "name": "66ae2e02_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "a77e1ead-11e8-865d-65c3-3bceba55c8b5"
                  }
                ],
                "name": "0467893f_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "a77e1ead-11e8-865d-65c3-3bceba55c8b5"
                },
                "uuid": "4778e3ea-d364-9766-8210-b9eb838d3de5"
              }
            }
          ],
          "depends_on_list": [],
          "variable_list": [],
          "uuid": "4c351f94-28ff-2d7a-5f4a-3fd814aa0d5b"
        },
        {
          "port_list": [],
          "singleton": false,
          "name": "HAProxy",
          "action_list": [
            {
              "critical": false,
              "type": "system",
              "uuid": "1202cb0d-ba05-0a34-5118-c679d1496127",
              "name": "action_create",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "e7b6a0ec-1500-9906-2492-3ce9afe59393"
                    },
                    "name": "f6656806_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "1ddfc71a-1640-3fcc-9f1b-0edee3f50f4a"
                  }
                ],
                "name": "aac609fe_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "1ddfc71a-1640-3fcc-9f1b-0edee3f50f4a"
                },
                "uuid": "e6ca6064-7845-058d-409d-fbafcce25ba8"
              }
            },
            {
              "critical": false,
              "type": "system",
              "uuid": "3d253c22-e056-df61-9fc2-fb83dee91230",
              "name": "action_delete",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "e7b6a0ec-1500-9906-2492-3ce9afe59393"
                    },
                    "name": "ff3ab2d3_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "b38f9c82-7741-25b5-72a3-8dd7f1b0d853"
                  }
                ],
                "name": "2e67e5a9_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "b38f9c82-7741-25b5-72a3-8dd7f1b0d853"
                },
                "uuid": "449200a3-8037-aec5-248b-926d2ea811ec"
              }
            },
            {
              "critical": false,
              "type": "system",
              "uuid": "86e7e15a-c88a-1f87-a178-f72191e05067",
              "name": "action_start",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "e7b6a0ec-1500-9906-2492-3ce9afe59393"
                    },
                    "name": "589c349d_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "89c25408-353e-f44a-1e9a-db2667d63e02"
                  }
                ],
                "name": "17540079_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "89c25408-353e-f44a-1e9a-db2667d63e02"
                },
                "uuid": "72419c69-4f29-bee6-95f1-029e7025e76e"
              }
            },
            {
              "critical": false,
              "type": "system",
              "uuid": "ddc84577-eb4d-98bc-e950-8934d41d3157",
              "name": "action_stop",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "e7b6a0ec-1500-9906-2492-3ce9afe59393"
                    },
                    "name": "2332effb_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "c17a7dd4-2c97-ad06-4930-dd44e6b8c758"
                  }
                ],
                "name": "8f5a914c_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "c17a7dd4-2c97-ad06-4930-dd44e6b8c758"
                },
                "uuid": "52325b6b-758c-696a-0798-2bf4aece35f7"
              }
            },
            {
              "critical": false,
              "type": "system",
              "uuid": "98caa52b-61d7-5add-85a1-714638cd9598",
              "name": "action_restart",
              "runbook": {
                "variable_list": [],
                "task_definition_list": [
                  {
                    "target_any_local_reference": {
                      "kind": "app_service",
                      "uuid": "e7b6a0ec-1500-9906-2492-3ce9afe59393"
                    },
                    "name": "6388dd1b_dag",
                    "child_tasks_local_reference_list": [],
                    "attrs": {
                      "edges": []
                    },
                    "type": "DAG",
                    "variable_list": [],
                    "uuid": "edd9b999-664d-f3c1-88d6-84e3e8c3f003"
                  }
                ],
                "name": "ab81b581_runbook",
                "main_task_local_reference": {
                  "kind": "app_task",
                  "uuid": "edd9b999-664d-f3c1-88d6-84e3e8c3f003"
                },
                "uuid": "76c64214-eeea-5a1d-0dc7-db37c8357db8"
              }
            }
          ],
          "depends_on_list": [
            {
              "kind": "app_service",
              "uuid": "4c351f94-28ff-2d7a-5f4a-3fd814aa0d5b"
            }
          ],
          "variable_list": [],
          "uuid": "e7b6a0ec-1500-9906-2492-3ce9afe59393"
        }
      ],
      "substrate_definition_list": [
        {
          "uuid": "200e54c6-4372-cab1-77e0-dd89c87ab440",
          "action_list": [],
          "readiness_probe": {
            "connection_type": "SSH",
            "connection_port": 22,
            "timeout_secs": "60",
            "address": "@@{platform.status.resources.nic_list[0].ip_endpoint_list[0].ip}@@",
            "disable_readiness_probe": false,
            "login_credential_local_reference": {
              "kind": "app_credential",
              "uuid": "c7a143b3-aba3-a8b7-4ca0-5b4347a84f54"
            }
          },
          "os_type": "Linux",
          "type": "AHV_VM",
          "create_spec": {
            "name": "APACHE_PHP",
            "resources": {
              "nic_list": [
                {
                  "ip_endpoint_list": [],
                  "subnet_reference": {
                    "uuid": "209a7e96-8c94-4e79-bb3d-6e7224c7cefe"
                  }
                }
              ],
              "num_vcpus_per_socket": "1",
              "num_sockets": "2",
              "memory_size_mib": 4096,
              "boot_config": {
                "boot_device": {
                  "disk_address": {
                    "device_index": 0,
                    "adapter_type": "SCSI"
                  }
                }
              },
              "disk_list": [
                {
                  "data_source_reference": {
                    "kind": "image",
                    "name": "CentOS",
                    "uuid": "f94c6fe7-14fa-441c-94f3-9bc36c7eff26"
                  },
                  "device_properties": {
                    "device_type": "DISK",
                    "disk_address": {
                      "device_index": 0,
                      "adapter_type": "SCSI"
                    }
                  }
                }
              ]
            }
          },
          "variable_list": [],
          "name": "APACHE_PHP_AHV"
        },
        {
          "uuid": "ff90b08c-e2b9-a606-d101-4b9197aa3ece",
          "action_list": [],
          "readiness_probe": {
            "connection_type": "SSH",
            "connection_port": 22,
            "timeout_secs": "60",
            "address": "@@{platform.status.resources.nic_list[0].ip_endpoint_list[0].ip}@@",
            "disable_readiness_probe": false,
            "login_credential_local_reference": {
              "kind": "app_credential",
              "uuid": "c7a143b3-aba3-a8b7-4ca0-5b4347a84f54"
            }
          },
          "os_type": "Linux",
          "type": "AHV_VM",
          "create_spec": {
            "name": "HAProxy",
            "resources": {
              "nic_list": [
                {
                  "ip_endpoint_list": [],
                  "subnet_reference": {
                    "uuid": "209a7e96-8c94-4e79-bb3d-6e7224c7cefe"
                  }
                }
              ],
              "num_vcpus_per_socket": "1",
              "num_sockets": "2",
              "memory_size_mib": 4096,
              "boot_config": {
                "boot_device": {
                  "disk_address": {
                    "device_index": 0,
                    "adapter_type": "SCSI"
                  }
                }
              },
              "disk_list": [
                {
                  "data_source_reference": {
                    "kind": "image",
                    "name": "CentOS",
                    "uuid": "f94c6fe7-14fa-441c-94f3-9bc36c7eff26"
                  },
                  "device_properties": {
                    "device_type": "DISK",
                    "disk_address": {
                      "device_index": 0,
                      "adapter_type": "SCSI"
                    }
                  }
                }
              ]
            }
          },
          "variable_list": [],
          "name": "HAPROXYAHV"
        }
      ],
      "credential_definition_list": [
        {
          "username": "root",
          "secret": {
            "attrs": {
              "is_secret_modified": false
            }
          },
          "type": "PASSWORD",
          "name": "CENTOS",
          "uuid": "c7a143b3-aba3-a8b7-4ca0-5b4347a84f54"
        }
      ],
      "package_definition_list": [
        {
          "name": "APACHE_PHP_PACKAGE",
          "service_local_reference_list": [
            {
              "kind": "app_service",
              "uuid": "4c351f94-28ff-2d7a-5f4a-3fd814aa0d5b"
            }
          ],
          "type": "DEB",
          "options": {
            "install_runbook": {
              "variable_list": [],
              "task_definition_list": [
                {
                  "target_any_local_reference": {
                    "kind": "app_package",
                    "uuid": "d556e4b8-3a67-06aa-4e1a-87f54074d30b"
                  },
                  "name": "64d9ee39_dag",
                  "child_tasks_local_reference_list": [
                    {
                      "kind": "app_task",
                      "uuid": "1d017502-520b-fe87-a50e-ba3e74080a5f"
                    }
                  ],
                  "attrs": {
                    "edges": []
                  },
                  "type": "DAG",
                  "variable_list": [],
                  "uuid": "935abae6-339b-9b53-608d-a1740e637c3b"
                },
                {
                  "target_any_local_reference": {
                    "kind": "app_package",
                    "uuid": "d556e4b8-3a67-06aa-4e1a-87f54074d30b"
                  },
                  "name": "PackageInstallTask",
                  "child_tasks_local_reference_list": [],
                  "attrs": {
                    "login_credential_local_reference": {
                      "kind": "app_credential",
                      "uuid": "c7a143b3-aba3-a8b7-4ca0-5b4347a84f54"
                    },
                    "script_type": "sh",
                    "script": "#!/bin/bash\nset -ex\n# -*- Install httpd and php\nsudo yum update -y\nsudo yum -y install epel-release\nsudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm\nsudo yum install -y httpd php56w php56w-mysql git\n\n\necho \"<IfModule mod_dir.c>\n        DirectoryIndex index.php index.html index.cgi index.pl index.php index.xhtml index.htm\n</IfModule>\" | sudo tee /etc/httpd/conf.modules.d/dir.conf\n\necho \"<?php\nphpinfo();\n?>\" | sudo tee /var/www/html/info.php\nsudo systemctl restart httpd\nsudo systemctl enable httpd\n\n\ncd /var/www/html\ngit init .\ngit remote add origin https://github.com/Team28Amer2018/UptickCapital.git\ngit pull origin master\n\nsudo systemctl disable firewalld.service\nsudo systemctl stop firewalld.service"
                  },
                  "type": "EXEC",
                  "variable_list": [],
                  "uuid": "1d017502-520b-fe87-a50e-ba3e74080a5f"
                }
              ],
              "name": "5a6447ea_runbook",
              "main_task_local_reference": {
                "kind": "app_task",
                "uuid": "935abae6-339b-9b53-608d-a1740e637c3b"
              },
              "uuid": "458660c0-b0a8-4640-7d75-2f0d78cca112"
            },
            "uninstall_runbook": {
              "variable_list": [],
              "task_definition_list": [
                {
                  "target_any_local_reference": {
                    "kind": "app_package",
                    "uuid": "d556e4b8-3a67-06aa-4e1a-87f54074d30b"
                  },
                  "name": "7c8d5c7a_dag",
                  "child_tasks_local_reference_list": [
                    {
                      "kind": "app_task",
                      "uuid": "9f389673-f98e-16d3-9e19-964903416880"
                    }
                  ],
                  "attrs": {
                    "edges": []
                  },
                  "type": "DAG",
                  "variable_list": [],
                  "uuid": "18a91bd9-efdd-cd0d-602b-1f609f71610c"
                },
                {
                  "target_any_local_reference": {
                    "kind": "app_package",
                    "uuid": "d556e4b8-3a67-06aa-4e1a-87f54074d30b"
                  },
                  "name": "PackageUninstallTask",
                  "child_tasks_local_reference_list": [],
                  "attrs": {
                    "login_credential_local_reference": {
                      "kind": "app_credential",
                      "uuid": "c7a143b3-aba3-a8b7-4ca0-5b4347a84f54"
                    },
                    "script_type": "sh",
                    "script": "#!/bin/bash\necho \"Goodbye!\""
                  },
                  "type": "EXEC",
                  "variable_list": [],
                  "uuid": "9f389673-f98e-16d3-9e19-964903416880"
                }
              ],
              "name": "50e56524_runbook",
              "main_task_local_reference": {
                "kind": "app_task",
                "uuid": "18a91bd9-efdd-cd0d-602b-1f609f71610c"
              },
              "uuid": "96726d32-3945-c53d-e8bb-7583a3735905"
            }
          },
          "variable_list": [],
          "uuid": "d556e4b8-3a67-06aa-4e1a-87f54074d30b"
        },
        {
          "name": "HAPROXY_PACKAGE",
          "service_local_reference_list": [
            {
              "kind": "app_service",
              "uuid": "e7b6a0ec-1500-9906-2492-3ce9afe59393"
            }
          ],
          "type": "DEB",
          "options": {
            "install_runbook": {
              "variable_list": [],
              "task_definition_list": [
                {
                  "target_any_local_reference": {
                    "kind": "app_package",
                    "uuid": "58ce4b3b-a454-2bfa-8fe9-ff367af25757"
                  },
                  "name": "d891d546_dag",
                  "child_tasks_local_reference_list": [
                    {
                      "kind": "app_task",
                      "uuid": "c23f9324-4108-d10a-543c-8940f3f81a2a"
                    }
                  ],
                  "attrs": {
                    "edges": []
                  },
                  "type": "DAG",
                  "variable_list": [],
                  "uuid": "f85e8c86-4f6e-1591-5c1b-3db0277d07d8"
                },
                {
                  "target_any_local_reference": {
                    "kind": "app_package",
                    "uuid": "58ce4b3b-a454-2bfa-8fe9-ff367af25757"
                  },
                  "name": "PackageInstallTask",
                  "child_tasks_local_reference_list": [],
                  "attrs": {
                    "login_credential_local_reference": {
                      "kind": "app_credential",
                      "uuid": "c7a143b3-aba3-a8b7-4ca0-5b4347a84f54"
                    },
                    "script_type": "sh",
                    "script": "#!/bin/bash\nset -ex\n\nsudo setenforce 0\nsudo sed -i 's/permissive/disabled/' /etc/sysconfig/selinux\n\nport=80\nsudo yum update -y\nsudo yum install -y haproxy\n\necho \"global\n  log 127.0.0.1 local0\n  log 127.0.0.1 local1 notice\n  maxconn 4096\n  quiet\n  user haproxy\n  group haproxy\ndefaults\n  log     global\n  mode    http\n  retries 3\n  timeout client 50s\n  timeout connect 5s\n  timeout server 50s\n  option dontlognull\n  option httplog\n  option redispatch\n  balance  roundrobin\n# Set up application listeners here.\nlisten stats 0.0.0.0:8080\n  mode http\n  log global\n  stats enable\n  stats hide-version\n  stats refresh 30s\n  stats show-node\n  stats uri /stats\nlisten admin\n  bind 127.0.0.1:22002\n  mode http\n  stats uri /\nfrontend http\n  maxconn 2000\n  bind 0.0.0.0:80\n  default_backend servers-http\nbackend servers-http\" | sudo tee /etc/haproxy/haproxy.cfg\n\nsudo sed -i 's/server host-/#server host-/g' /etc/haproxy/haproxy.cfg\n\nhosts=`$(echo \"@@{APACHE_PHP.address}@@\" | sed 's/^,//' | sed 's/,$//' | tr \",\" \"\\n\")\n\nfor host in $hosts\ndo\n   echo \"  server host-${host} ${host}:${port} weight 1 maxconn 100 check\" | sudo tee -a /etc/haproxy/haproxy.cfg\ndone\n\nsudo systemctl daemon-reload\nsudo systemctl enable haproxy\nsudo systemctl restart haproxy"
                  },
                  "type": "EXEC",
                  "variable_list": [],
                  "uuid": "c23f9324-4108-d10a-543c-8940f3f81a2a"
                }
              ],
              "name": "78f023f2_runbook",
              "main_task_local_reference": {
                "kind": "app_task",
                "uuid": "f85e8c86-4f6e-1591-5c1b-3db0277d07d8"
              },
              "uuid": "16be788f-6a8a-38d0-ae6a-1374ac3bdec8"
            },
            "uninstall_runbook": {
              "variable_list": [],
              "task_definition_list": [
                {
                  "target_any_local_reference": {
                    "kind": "app_package",
                    "uuid": "58ce4b3b-a454-2bfa-8fe9-ff367af25757"
                  },
                  "name": "b789b184_dag",
                  "child_tasks_local_reference_list": [
                    {
                      "kind": "app_task",
                      "uuid": "38970ed8-284d-d00c-e819-c1c5d9b7d2ea"
                    }
                  ],
                  "attrs": {
                    "edges": []
                  },
                  "type": "DAG",
                  "variable_list": [],
                  "uuid": "215d9f92-ca99-8c4d-f0ba-cc110e3275be"
                },
                {
                  "target_any_local_reference": {
                    "kind": "app_package",
                    "uuid": "58ce4b3b-a454-2bfa-8fe9-ff367af25757"
                  },
                  "name": "PackageUninstallTask",
                  "child_tasks_local_reference_list": [],
                  "attrs": {
                    "script": "#!/bin/bash\necho \"Goodbye!\"",
                    "script_type": "sh",
                    "login_credential_local_reference": {
                      "kind": "app_credential",
                      "uuid": "c7a143b3-aba3-a8b7-4ca0-5b4347a84f54"
                    }
                  },
                  "type": "EXEC",
                  "variable_list": [],
                  "uuid": "38970ed8-284d-d00c-e819-c1c5d9b7d2ea"
                }
              ],
              "name": "bc0e5208_runbook",
              "main_task_local_reference": {
                "kind": "app_task",
                "uuid": "215d9f92-ca99-8c4d-f0ba-cc110e3275be"
              },
              "uuid": "a7b56cd2-7f29-27d3-af4c-e8c607e7cc6b"
            }
          },
          "variable_list": [],
          "uuid": "58ce4b3b-a454-2bfa-8fe9-ff367af25757"
        }
      ],
      "app_profile_list": [
        {
          "action_list": [],
          "deployment_create_list": [
            {
              "uuid": "fbcf1e47-ab63-0db8-4b82-40e2dcb2958a",
              "action_list": [],
              "package_local_reference_list": [
                {
                  "kind": "app_package",
                  "uuid": "d556e4b8-3a67-06aa-4e1a-87f54074d30b"
                }
              ],
              "max_replicas": "2",
              "substrate_local_reference": {
                "kind": "app_substrate",
                "uuid": "200e54c6-4372-cab1-77e0-dd89c87ab440"
              },
              "min_replicas": "2",
              "variable_list": [],
              "name": "87567030_deployment"
            },
            {
              "uuid": "714edca3-7d23-7de8-76a5-029619ce29e6",
              "action_list": [],
              "package_local_reference_list": [
                {
                  "kind": "app_package",
                  "uuid": "58ce4b3b-a454-2bfa-8fe9-ff367af25757"
                }
              ],
              "max_replicas": "1",
              "substrate_local_reference": {
                "kind": "app_substrate",
                "uuid": "ff90b08c-e2b9-a606-d101-4b9197aa3ece"
              },
              "min_replicas": "1",
              "variable_list": [],
              "name": "45b4bafc_deployment"
            }
          ],
          "uuid": "e4c3f601-58e5-742f-c7ac-42c0b9353dd8",
          "variable_list": [
            {
              "val_type": "STRING",
              "description": "",
              "name": "Mysql_user",
              "value": "root",
              "label": "",
              "attrs": {},
              "type": "LOCAL",
              "uuid": "cb6686d8-7777-b41a-b5e6-1a62e1f83a7b"
            },
            {
              "val_type": "STRING",
              "description": "",
              "name": "Mysql_password",
              "label": "",
              "attrs": {
                "is_secret_modified": false
              },
              "type": "SECRET",
              "uuid": "b6902487-fc9e-b317-5047-27bfecaaa9f2"
            },
            {
              "val_type": "STRING",
              "description": "",
              "name": "Database_name",
              "value": "homestead",
              "label": "",
              "attrs": {},
              "type": "LOCAL",
              "uuid": "076d4b46-4164-b876-8168-517e7ab4db2a"
            },
            {
              "val_type": "STRING",
              "description": "",
              "name": "App_git_link",
              "value": "https://github.com/ideadevice/quickstart-basic.git",
              "label": "",
              "attrs": {},
              "type": "LOCAL",
              "uuid": "12e9f7fb-e02f-5a15-a4a4-c00eb69b0ec4"
            }
          ],
          "name": "Default"
        }
      ],
      "default_credential_local_reference": {
        "kind": "app_credential",
        "name": "default_credential",
        "uuid": "c7a143b3-aba3-a8b7-4ca0-5b4347a84f54"
      },
      "client_attrs": {
        "fb37b600-b3cc-5ff7-807a-4c4102b61563": {
          "y": -20,
          "x": 80
        },
        "4c351f94-28ff-2d7a-5f4a-3fd814aa0d5b": {
          "y": 20,
          "x": -20
        },
        "e7b6a0ec-1500-9906-2492-3ce9afe59393": {
          "y": -80,
          "x": -200
        }
      }
    }
  },
  "api_version": "3.0",
  "metadata": {
    "last_update_time": "1523487309565263",
    "kind": "blueprint",
    "uuid": "0708991f-aace-6ab6-53c6-398719526c80",
    "project_reference": {
      "kind": "project",
      "name": "Calm",
      "uuid": "9a59eab3-df68-45a6-87f5-700c6d44c579"
    },
    "spec_version": 11,
    "creation_time": "1523383816525219",
    "owner_reference": {
      "kind": "user",
      "uuid": "00000000-0000-0000-0000-000000000000",
      "name": "admin"
    },
    "categories": {},
    "name": "1_Deploy Initial Apache"
  }
}
"@


# Set Credentials
$calm_username = "admin" # Change this for your environment - we'll prompt for this later.
$calm_password = "techX2018!" # Change this for your environment - we'll prompt for this later.


# Encode credentials
$calm_AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $calm_username,$calm_password)))


# Set Request Headers
$calm_headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$calm_headers.Add("Authorization", "Basic $calm_AuthInfo")

$uri = "https://10.21.9.39:9440/api/nutanix/v3/blueprints/0708991f-aace-6ab6-53c6-398719526c80/launch"

Invoke-RestMethod -Method Post -Uri "$uri" -SkipCertificateCheck -Headers $calm_headers -Body $body -ContentType 'application/json'
