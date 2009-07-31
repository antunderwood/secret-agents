class SecretMessagesController < ApplicationController
  # GET /secret_messages
  # GET /secret_messages.xml
  def index
    @secret_messages = SecretMessages.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @secret_messages }
    end
  end

  # GET /secret_messages/1
  # GET /secret_messages/1.xml
  def show
    @secret_messages = SecretMessages.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @secret_messages }
    end
  end

  # GET /secret_messages/new
  # GET /secret_messages/new.xml
  def new
    @secret_messages = SecretMessages.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @secret_messages }
    end
  end

  # GET /secret_messages/1/edit
  def edit
    @secret_messages = SecretMessages.find(params[:id])
  end

  # POST /secret_messages
  # POST /secret_messages.xml
  def create
    @secret_messages = SecretMessages.new(params[:secret_messages])

    respond_to do |format|
      if @secret_messages.save
        flash[:notice] = 'SecretMessages was successfully created.'
        format.html { redirect_to(@secret_messages) }
        format.xml  { render :xml => @secret_messages, :status => :created, :location => @secret_messages }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @secret_messages.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /secret_messages/1
  # PUT /secret_messages/1.xml
  def update
    @secret_messages = SecretMessages.find(params[:id])

    respond_to do |format|
      if @secret_messages.update_attributes(params[:secret_messages])
        flash[:notice] = 'SecretMessages was successfully updated.'
        format.html { redirect_to(@secret_messages) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @secret_messages.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /secret_messages/1
  # DELETE /secret_messages/1.xml
  def destroy
    @secret_messages = SecretMessages.find(params[:id])
    @secret_messages.destroy

    respond_to do |format|
      format.html { redirect_to(secret_messages_url) }
      format.xml  { head :ok }
    end
  end
end
