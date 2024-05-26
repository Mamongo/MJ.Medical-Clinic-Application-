document.addEventListener('DOMContentLoaded', () => {
    // Fetch and display data (admins, users, doctors, visits)
    fetchData('admins', 'admin-list');
    fetchData('users', 'user-list');
    fetchData('doctors', 'doctor-list');
    fetchData('visits', 'visit-list');
});

function fetchData(entity, elementId) {
    fetch(`http://localhost:5000/api/${entity}`)
        .then(response => response.json())
        .then(data => {
            const listElement = document.getElementById(elementId);
            data.forEach(item => {
                const div = document.createElement('div');
                div.textContent = JSON.stringify(item);
                listElement.appendChild(div);
            });
        })
        .catch(error => console.error('Error fetching data:', error));
}
