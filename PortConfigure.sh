#!/bin/bash
#Выставление портов. Проверки писать мне всё так же лень...
ufw allow 22/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw allow 1883/tcp
ufw allow 8883/tcp
ufw allow 18883/tcp
ufw enable