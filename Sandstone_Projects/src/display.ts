/**
 * This file is just an example.
 * You can delete it!
 */

import { join } from 'path';
import {
  MCFunction,
  say,
  Advancement,
  tp,
  team,
  scoreboard,
  tellraw,
  schedule,
  execute,
  data,
  give,
  Selector,
  tag,
  help,
  Objective,
  _,
  Variable,


} from 'sandstone';

const helpms = Advancement('help_msg:help_sign', {
  criteria: {
    help_sign: {
      trigger: 'minecraft:item_used_on_block',
      conditions: {
        item: {
          items: ['minecraft:firework_rocket'],
          nbt: "{display:{Name:'{\"text\":\"救援信号弹\",\"color\":\"red\"}'}}"
        },
      },
    },
  },
  requirements:[
    ['help_sign']
  ],
  rewards:{
    function:'help_msg:send_helpmsg'
  }
});

const HelpIndex = Variable(0)

const playerWhoSendHelp = Selector('@a',{
  advancements:{
    [helpms.name]: true
  }
});



const self = Selector('@s');
const help_msg = Objective.create('help_msg','dummy');
const help_menber = Objective.create('help_menber','dummy');
const myHelp_menber = help_menber('@s')
const notInhelp = '@a[tag=!help]'

MCFunction('help_msg:send_helpmsg',() => {
  tag(self).add('in_help'),
  team.add('help'),
  team.join('help', self),
  myHelp_menber.set(HelpIndex),
  HelpIndex.add(1),
  scoreboard.players.set('@s','helpmsg',0)
  tellraw(notInhelp,['[',{selector: '@s', color: "gold"},']',{text:" 发送了求援信号",color: "red",clickEvent: {action: "run_command",value: "/execute as @s run function help_msg:before_tp"},hoverEvent: {action: "show_text",contents: ["点击支援"]}}])
  tellraw(self, ["[",{selector: "@s", color: "gold"},"]",{text:" 发送了求援信号",color: "red"}])
  _.if(help_msg(self).equalTo(1),()=>{
    say('hahahah')
  })
})

MCFunction('help_msg:before_tp',() => {
  tp
})

MCFunction('help_msg:display_message', () => {
  say('Hello world!'),
  tellraw('@a', [
    '\n========= Congratulations! =========\n\n',
    { text: ' Sandstone', color: 'gold', bold: true }, ' is ', { text: 'successfully installed.\n\n', color: 'green' },
    ' Add files to the ', { text: 'src', underlined: true }, ' folder\n',
    ' and start creating your data pack!\n',
    '==============', { text: '🏹', color: '#D2691E' }, { text: '⚔', color: '#45ACA5' }, { text: '⛏', color: '#FFD700' }, '==============',
  ])
}, {
  runOnLoad: true,
})