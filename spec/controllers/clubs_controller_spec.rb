require 'rails_helper'

  describe ClubsController do
    describe "#index" do
      it "redirects visitors to login page" do
        get :index
        expect(response).to redirect_to(login_path)
      end

      it "renders index when a student visits" do
        student = Student.create!(
          name: "Rick",
          email: "Rick@example.com",
          password_digest: "test"
        )
        session[:student_id] = student.id
        get :index
        expect(response).to render_template("index")
      end

    end
  end
