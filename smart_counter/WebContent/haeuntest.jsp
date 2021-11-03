<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8' />
  <!-- ȭ�� �ػ󵵿� ���� ���� ũ�� ����(����� ����) -->
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <!-- jquery CDN -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- fullcalendar CDN -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <!-- fullcalendar ��� CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<style>
  /* body ��Ÿ�� */
  html, body {
    overflow: hidden;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;

  }
  /* Ķ���� ���� �ش� ��Ÿ��(��¥�� �ִ� �κ�) */ 
  .fc-header-toolbar {
    padding-top: 1em;
    padding-left: 1em;
    padding-right: 1em;
  }
  
  #home{
        width:100px;
        margin:auto;
        display:block;
    }
</style>
</head>
<body style="padding:30px;">
  <!-- calendar �±� -->
  <div id='calendar-container'>
    <div id='calendar'></div>
  </div>
  <script>
   $("td").on("click",function(){
        $(this).css("color","black");
    });




  (function(){
    $(function(){
      // calendar element ���
      var calendarEl = $('#calendar')[0];
      // full-calendar �����ϱ�
      var calendar = new FullCalendar.Calendar(calendarEl, {
        height: '700px', // calendar ���� ����
        expandRows: true, // ȭ�鿡 �°� ���� �缳��
        slotMinTime: '08:00', // Day Ķ�������� ���� �ð�
        slotMaxTime: '20:00', // Day Ķ�������� ���� �ð�
        // �ش��� ǥ���� ����
        headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
        },
        initialView: 'dayGridMonth', // �ʱ� �ε� �ɶ� ���̴� Ķ���� ȭ��(�⺻ ����: ��)
        initialDate: null, // �ʱ� ��¥ ���� (�������� ������ ���� ��¥�� ���δ�.)
        navLinks: true, // ��¥�� �����ϸ� Day Ķ������ Week Ķ������ ��ũ
        editable: true, // ���� ����?
        selectable: true, // �޷� ���� �巡�� ��������
        nowIndicator: true, // ���� �ð� ��ũ
        dayMaxEvents: true, // �̺�Ʈ�� �����Ǹ� ���� ���� (+ �� �������� ǥ��)
        locale: 'ko', // �ѱ��� ����
        eventAdd: function(obj) { // �̺�Ʈ�� �߰��Ǹ� �߻��ϴ� �̺�Ʈ
          console.log(obj);
        },
        eventChange: function(obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
          console.log(obj);
        },
        eventRemove: function(obj){ // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
          console.log(obj);
        },
        select: function(arg) { // Ķ�������� �巡�׷� �̺�Ʈ�� ������ �� �ִ�.
          var title = alert('�⼮üũ�Ϸ�');
            calendar.addEvent({
              title: '�� ���߾��',
              start: arg.start,
              end: arg.end,
              allDay: arg.allDay
            })
          if (title) {
          }
          calendar.unselect()
          
        },
        events :[]
        
      });
      // Ķ���� ������
      calendar.render();
    });
  })();
</script>
<br><br>
	<div class="logo" align="center">
		<a href="index2.jsp"><img src="logo_120.png" alt=""></a>
	</div>

</body>
</html>