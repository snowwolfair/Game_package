import type { SandstoneConfig } from 'sandstone'

export default {
  name: 'template',
  description: [ 'A ', { text: 'Sandstone', color: 'gold' }, ' data pack.' ],
  formatVersion: 9,
  namespace: 'default',
  packUid: 'kZZpDK67',
  saveOptions: { path: './.sandstone/output/datapack' },
  onConflict: {
    default: 'warn',
  },
} as SandstoneConfig
