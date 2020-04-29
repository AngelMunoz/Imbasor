import { App } from './pages/app'
import { Stores } from './controllers/store'

const state = Stores.new()

Imba.mount <App[state]>