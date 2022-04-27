let today = new Date();

console.log(formatTime(today));

function dateSuffix(dayInteger) {
  let suffix = 'th';
  if (dayInteger === 1 || dayInteger === 21 || dayInteger === 31){
    suffix = 'st';
  } else if (dayInteger === 2 || dayInteger === 22) {
    suffix = 'nd';
  } else if (dayInteger === 3 || dayInteger === 23) {
    suffix = 'rd';
  }
  return suffix;
}

function formattedMonth(dateObject) {
  const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May',
                  'Jun', 'Jul', 'Aug', 'Sep', 'Oct',
                                        'Nov', 'Dec'];
  return months[dateObject.getMonth()];
}

function formattedDay(dateObject) {
  const daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  return day = daysOfWeek[dateObject.getDay()];
}

function formattedDate(dateObject) {
  let month = formattedMonth(dateObject);
  let day = formattedDay(dateObject);
  let date = dateObject.getDate() + dateSuffix(dateObject.getDate());
  console.log(`Today's date is ${day}, ${month} ${date}`);
}

function formatTime(dateObject) {
  let hours = dateObject.getHours();
  let minutes = dateObject.getMinutes();
  return `${hours}:${minutes}`;
}