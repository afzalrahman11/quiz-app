### Add form_with
```ruby
# app/views/quizzes/show.html.erb
  <%= form_with url: quiz_submit_path(@quiz), method: :post do |form| %>
    Form Contents
<% end %>
```
- `quiz_submit_path(@quiz)` -> path to submit the form
- `method: :post` -> if not mention, it'll assume this as a `get` request


### Add radio_button_tag
```ruby
# app/views/quizzes/show.html.erb
<% if question.optionA.present? %>
  <label class = "flex items-center gap-2">
    <%= radio_button_tag "question[#{question.id}]", '0' %> <%= question.optionA %>
  </label>
<% end %>
```

- `quiz#{question.id}` -> key for radio button params
- `0` -> value for that selected radio button
- `question.optionA` -> text on the radio button. 
ie, after selecting the optoins and click the submit button will provide following params.
```ruby
  params[:answers]: "answers"=>{"44"=>"1", "21"=>"0", "45"=>"3", "5"=>"2", "14"=>"2"}
```

### View params
- we can print this params in the browser console by adding `raise` inside the controller action, like
```ruby
  def submit
    raise
  end
```
### Use params in the code.
- In the controller, after post submit the selected answers, the following params will be available:
```ruby
>> params
=> {"authenticity_token"=>"J1O9K-HbDGQVMwa9J0iJc-AKgaOUhfQUiYYdaq3V2d0_6_AY6FkwXI95nhJKxvvc2roSr5_mdxeMxU0Ay7p-Uw", "answers"=> {"44"=>"0", "21"=>"3", "26"=>"0", "4"=>"0"}, "commit"=>"Submit", "controller"=>"quizzes", "action"=>"submit", "quiz_id"=>"3"}
```
