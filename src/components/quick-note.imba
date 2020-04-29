import './quick-note.css'

export tag quick-note

	prop note

	def isCompleted isCompleted 
		switch isCompleted
			when true
				"Completed"
			when false
				"Pending"
	
	def contentOrDefault content
		if content
			content
		else
			""

	def showTitleEdit note
		note:isEditingTitle = !note:isEditingTitle

	def showContentEdit note
		note:isEditingContent = !note:isEditingContent || !note:content

	def prepareToSave note
		var noticion = Object.assign note, { isEditingContent: undefined, isEditingTitle: undefined }
		trigger('savequicknote', note)

	def render
		<self.box.quick-note>
			if note:isEditingTitle
				<input[notetitle].edit-input :blur.showTitleEdit(note) autofocus>
			else
				<p.subtitle :tap.showTitleEdit(note)> "{self.contentOrDefault note:title}"

			<label.checkbox>
				<input[note:completed] type="checkbox">
				<span.with-space> "{self.isCompleted note:completed}"
			<textarea[note:content].edit-area rows="10">
			<button.button.is-primary :tap.prepareToSave(note)> "Save"