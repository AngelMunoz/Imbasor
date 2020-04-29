import './app.css'
require 'imba-router'

import { QuickNotes } from './quick-notes'
import { About } from './about'
import { Home } from './home'

export tag App

	prop isActive

	def load
		@isActive = false

	def toggleMenu
		@isActive = !@isActive

	def render
		<self>
			<nav.navbar>
				<section.navbar-brand>
					<div.navbar-burger.is-active=self.isActive :tap.toggleMenu>
						<span aria-hiden="true">
						<span aria-hiden="true">
						<span aria-hiden="true">
				<section.navbar-menu.is-active=self.isActive>
					<div.navbar-start>
						<li.navbar-item route-to='/'> "Home"
						<li.navbar-item route-to='/quick-notes'> "Quick Notes"
						<li.navbar-item route-to='/about'> "About"

			<main>
				<Home route="/">
				<quick-notes[data.notes] route="/quick-notes">
				<About route="/about">
			<footer> "This is some Content"

