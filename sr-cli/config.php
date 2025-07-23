<?php

return [
    'bin' => [
        'didi' => '~/Library/Python/3.9/bin/didi',
        'docker-start' => 'open -a Docker',
        'git' => '/usr/bin/git',
        'composer' => '/opt/homebrew/bin/composer',
        'ansible' => '/opt/homebrew/bin/ansible',
        'php' => '/opt/homebrew/bin/php',
        'lessc' => null,
        'sass' => null,
    ],
    'ansible' => [
      'bin' => '/opt/homebrew/bin/ansible',
      'playbook' => '~/Development/.ansible-playbooks',
      'dotfiles' => '~/Development/.sr-dotfiles',
    ],
    'hakuna' => [
        'token' => getenv('HAKUNA_TOKEN') ?: null,
    ],
    'jira' => [
        'token' => getenv('JIRA_TOKEN') ?: null,
    ],
    'mite' => [
        'token' => getenv('MITE_TOKEN') ?: null,
    ],
    'srdb' => [
        'password' => getenv('SRDB_TOKEN') ?: null,
    ],
];
