import os
import json
import time
import schedule
import threading
from mcdreforged.api.all import *

PLUGIN_METADATA = {
    'id': 'realtime_reminder',
    'version': '1.0.0',
    'name': 'RealTime Reminder',
    'description': '在现实时间的6:00, 12:00, 18:00前5分钟提醒玩家',
    'author': 'YourName',
    'link': 'https://github.com/YourRepo'
}

CONFIG_FILE = os.path.join('config', 'realtime_reminder.json')
DEFAULT_CONFIG = {
    "reminder_times": [
        {"hour": 6, "minute": 0, "message": "现实时间将在5分钟后到达6:00"},
        {"hour": 12, "minute": 0, "message": "现实时间将在5分钟后到达12:00"},
        {"hour": 18, "minute": 0, "message": "现实时间将在5分钟后到达18:00"}
    ],
    "prefix": "§6[提醒]§r ",
    "advance_minutes": 5,
    "broadcast_to_console": True
}

def load_config():
    if not os.path.exists(CONFIG_FILE):
        os.makedirs(os.path.dirname(CONFIG_FILE), exist_ok=True)
        with open(CONFIG_FILE, 'w') as f:
            json.dump(DEFAULT_CONFIG, f, indent=4)
        return DEFAULT_CONFIG.copy()
    
    try:
        with open(CONFIG_FILE, 'r') as f:
            return json.load(f)
    except:
        return DEFAULT_CONFIG.copy()

def on_load(server: PluginServerInterface, old):
    config = load_config()
    server.logger.info("现实时间提醒插件已加载")
    
    # 初始化调度器
    scheduler_thread = threading.Thread(target=run_scheduler, args=(server, config), daemon=True)
    scheduler_thread.start()

def run_scheduler(server, config):
    # 设置时区（根据服务器所在时区调整）
    # 如果需要特定时区，可以添加：schedule.default_tz = pytz.timezone('Asia/Shanghai')
    
    # 添加定时任务
    for rt in config["reminder_times"]:
        hour = rt["hour"]
        minute = rt["minute"]
        advance = config["advance_minutes"]
        
        # 计算提前提醒的时间
        reminder_minute = minute - advance
        reminder_hour = hour
        if reminder_minute < 0:
            reminder_minute += 60
            reminder_hour -= 1
        
        # 安排任务
        schedule.every().day.at(f"{reminder_hour:02d}:{reminder_minute:02d}").do(
            send_reminder, 
            server=server, 
            message=config["prefix"] + rt["message"],
            broadcast=config["broadcast_to_console"]
        )
    
    # 运行调度器
    while True:
        schedule.run_pending()
        time.sleep(1)

def send_reminder(server, message, broadcast):
    # 向所有玩家发送提醒
    server.execute(f'tellraw @a {json.dumps({"text": message})}')
    
    # 向控制台发送提醒
    if broadcast:
        server.logger.info(message.replace("§6", "").replace("§r", ""))

def on_unload(server):
    server.logger.info("现实时间提醒插件已卸载")