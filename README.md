# Install mybb

1. Install vagrant

2. navigate to the project root folder (where the Vagrantfile is located) and run ```vagrant up```

3. Uncomment lines 53 and 54 of the Vagrant file and do ```vagrant reload```

4. Run de following commands which will: update default site, restart nginx and start mysql docker image

```bash
  sudo cp /path/to/your/default.custom /etc/nginx/sites-enabled/default

  sudo systemctl reload nginx.service

  sudo docker-compose -f /path/to/your/docker-compose.yml up -d
```

It should work!