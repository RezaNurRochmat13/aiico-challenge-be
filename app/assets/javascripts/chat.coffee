# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 $(document).ready =>
      username = ''

      $('.sidebar-form').keyup (event) ->
        if event.keyCode == 13 and !event.shiftKey
          username = event.target.value
          $('.username').append(username)
          $('#username').val(username)
          $('.username').removeClass('d-none')
          $('.sidebar-form').addClass('d-none')
          $('#message').removeAttr("disabled")
          $('#message').focus()
        return

      $('#chat-form').on 'ajax:success', (data) ->
        $('#chat-form')[0].reset()
        updateChat data.detail[0]
        return

      updateChat = (data) ->
        $('.chat-box').append """
          <div class="col-12">
            <div class="chat bg-secondary d-inline-block text-left text-white mb-2">
              <div class="chat-bubble">
                <small class="chat-username">#{data.username}</small>
                <p class="m-0 mt-2 chat-message">#{data.message}</p>
              </div>
            </div>
          </div>
        """
        return
