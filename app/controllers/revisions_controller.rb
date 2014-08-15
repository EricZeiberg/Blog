class RevisionsController < ApplicationController

	require 'will_paginate/array'

	def index
		client = Octokit::Client.new(:access_token => "8dffd8e51a7564338e367dc6a433a310238f44b0")
	    user = client.user
	    user.login
	    Octokit.auto_paginate = true
	    @repo = 'MasterEjay/Blog'
	    @name = 'Blog'
	    @desc = 'These are the latest changes to the blog'
	    unpaginated = client.commits(@repo, :per_page => 10000)
	    @commits = unpaginated.paginate(:page => params[:page], :per_page => 15)
	end

end
