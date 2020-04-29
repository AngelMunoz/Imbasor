import { Page } from './page'
import './quick-notes.css'
import { quick-note } from '../components/quick-note'

export tag quick-notes < Page

	def build
		@isLoading = true

	def load
		data.notes = await data.loadNotes
		@isLoading = false

	def onsavequicknote e
		data.saveNote e.data()

	def render
		<self>
			if @isLoading
				<progress class="progress is-small is-dark" indeterminate>
			else
				<ul.notes> for note in data.notes
					<quick-note note=note>