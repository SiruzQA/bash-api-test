# Terminal API Tester

Simple API testing from terminal using Bash and cURL. Includes dynamic data, logging and cron support.

## Features
- Dynamic UUID and data per request
- Logs both request and response
- Ready to use with cron jobs

## Usage

```bash
bash scripts/test_create_user.sh
```

## Cron Job Example

```bash
0 * * * * /bin/bash /path/to/run_all.sh >> /path/to/logs/test_log_$(date +\%F).txt 2>&1
```

## Author

Created by [SiruzQA](https://github.com/SiruzQA)
