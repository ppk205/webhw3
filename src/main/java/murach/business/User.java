package murach.business;

import java.io.Serializable;

public class User implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String birthDate;
    private String hearAboutUs;
    private String contactMethod;
    private String wantsAnnouncements;

    public User() {
        firstName = "";
        lastName = "";
        email = "";
        birthDate = "";
        hearAboutUs = "";
        contactMethod = "";
        wantsAnnouncements = "";
    }

    public User(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.birthDate = "";
        this.hearAboutUs = "";
        this.contactMethod = "";
        this.wantsAnnouncements = "";
    }

    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getBirthDate() { return birthDate; }
    public void setBirthDate(String birthDate) { this.birthDate = birthDate; }

    public String getHearAboutUs() { return hearAboutUs; }
    public void setHearAboutUs(String hearAboutUs) { this.hearAboutUs = hearAboutUs; }

    public String getContactMethod() { return contactMethod; }
    public void setContactMethod(String contactMethod) { this.contactMethod = contactMethod; }

    public String getWantsAnnouncements() { return wantsAnnouncements; }
    public void setWantsAnnouncements(String wantsAnnouncements) { this.wantsAnnouncements = wantsAnnouncements; }
}