<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>When2Meet 时间表格</title>
  <style>
    table {
      border-collapse: collapse;
    }

    th, td {
      border: 1px solid black;
      padding: 8px;
    }

    th {
      background-color: #f2f2f2;
    }

    .available {
      background-color: lightgreen;
    }

    .unavailable {
      background-color: lightgray;
    }

    .booked {
      background-color: red;
    }
  </style>
  <script>
    window.addEventListener('DOMContentLoaded', (event) => {
      const form = document.querySelector('form');
      const checkboxes = document.querySelectorAll('input[type="checkbox"]');
      const slotCounts = {};

      checkboxes.forEach((checkbox) => {
        checkbox.addEventListener('change', () => {
          const slot = checkbox.parentNode;
          const slotValue = checkbox.value;

          if (checkbox.checked) {
            slot.classList.add('booked');
            if (slotCounts[slotValue]) {
              slotCounts[slotValue]++;
              if (slotCounts[slotValue] >= 2) {
                slot.classList.remove('available');
                slot.classList.add('unavailable');
				slot.querySelector('input[type="checkbox"]').disabled = true;
              }
            } else {
              slotCounts[slotValue] = 1;
            }
          } else {
            if (slotCounts[slotValue] >= 2) {
                slot.classList.remove('available');
                slot.classList.add('unavailable');
				slot.querySelector('input[type="checkbox"]').disabled = true;
              }else if(slotCounts[slotValue] == 1){
        slot.classList.add('booked');
              }else{
        slot.classList.add('available');
              }
            
          }
        });
      });

      form.addEventListener('submit', (event) => {
        event.preventDefault();
        checkboxes.forEach((checkbox) => {
          const slot = checkbox.parentNode;
          const slotValue = checkbox.value;

          if (checkbox.checked) {
            slot.classList.add('booked');
            if (slotCounts[slotValue]) {
              slotCounts[slotValue]++;
              if (slotCounts[slotValue] > 2) {
                slot.classList.remove('available');
                slot.classList.remove('booked');
                slot.classList.add('unavailable');
              }
            } else {
              slotCounts[slotValue] = 1;
            }
          } else {
            slotCounts[slotValue] = 0;
          }

          checkbox.checked = false;
        });
      });
    });
  </script>
</head>
<body>
  <h1>When2Meet 时间表格</h1>

  <form>
    <table>
      <tr>
        <th>时间</th>
        <th>星期一</th>
        <th>星期二</th>
        <th>星期三</th>
        <th>星期四</th>
        <th>星期五</th>
      </tr>
      <tr>
        <td>9:00</td>
        <td class="available"><input type="checkbox" name="timeSlot" value="mon_9"></td>
        <td class="available"><input type="checkbox" name="timeSlot" value="tue_9"></td>
        <td class="available"><input type="checkbox" name="timeSlot" value="wed_9"></td>
        <td class="available"><input type="checkbox" name="timeSlot" value="thu_9"></td>
        <td class="available"><input type="checkbox" name="timeSlot" value="fri_9"></td>
      </tr>
      <tr>
        <td>10:00</td>
        <td class="available"><input type="checkbox" name="timeSlot" value="mon_10"></td>
        <td class="available"><input type="checkbox" name="timeSlot" value="tue_10"></td>
        <td class="available"><input type="checkbox" name="timeSlot" value="wed_10"></td>
        <td class="available"><input type="checkbox" name="timeSlot" value="thu_10"></td>
        <td class="available"><input type="checkbox" name="timeSlot" value="fri_10"></td>
      </tr>
      <!-- Add more time and date rows here -->
    </table>

    <input type="submit" value="提交">
  </form>
</body>
</html>
