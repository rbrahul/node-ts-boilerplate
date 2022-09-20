module.exports = {
    apps : [
        {
          name: "node-application",
          script: "./dist/main.js",
          //"cwd": "/home/app",
            "args": "start",
            "exec_mode": "cluster",
            "instances": "1",
            "env": {
                "PORT": 3000,
                "NODE_ENV": "develop",
                "HOST": "0.0.0.0",
                watch: true,
                env: {}
                }
        }
    ]
  }
