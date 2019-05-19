module.exports = {
  apps : [{
    name: 'enginx',
		script: 'node/index.js',
		args: ['--nobuild', '--nocertbot'],
    instances: 1,
    watch: true,
		ignore_watch: ['./output'],
		autorestart: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'development'
    },
    env_production: {
      NODE_ENV: 'production'
    }
  }],
};
