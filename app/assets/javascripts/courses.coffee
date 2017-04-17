class Course
  constructor: ->
    $('#JS-course').on 'change', (e)->
      subject_elem = document.getElementById('JS-subjects')
      data = JSON.parse(subject_elem.dataset.subjects)
      subject_option = data[this.value]
      if(subject_option == undefined || subject_option.length > 0)
        $(subject_elem.options).remove()
        for k,v in subject_option
          subject_elem.options[v] = new Option(k[0], k[1])
      else
        $(subject_elem.options).remove()

$(document).on 'ready change', (e) ->
  course = new Course()
