export class NotesStore
    prop notes

    def initialize 
        @notes = []

    def loadNotes
        var res = await window.fetch 'https://jsonplaceholder.typicode.com/todos?_page=1&_limit=20'
        return res.json

    def saveNote note
        console.log "saving note", note