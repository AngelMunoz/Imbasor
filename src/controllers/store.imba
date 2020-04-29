import { NotesStore } from './quicknotes'

export class Stores
	prop states

	prop notes
	
	def initialize
		@states = { counter: 0 }
		@notes = NotesStore.new