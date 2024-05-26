namespace MedicalClinicApi.Models
{
    public class Admin
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Surname { get; set; }
    }

    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int Visits { get; set; }
        public int? Saved_Doctors_id { get; set; }
    }

    public class Doctor
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Specialisation { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }

    public class Visit
    {
        public int Id { get; set; }
        public int Doctor_id { get; set; }
        public int User_id { get; set; }
        public DateTime Date { get; set; }
    }
}
