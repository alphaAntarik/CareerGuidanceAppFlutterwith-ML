from flask import Flask, request, jsonify
import numpy as np
import pickle

model = pickle.load(open("careerlast.pkl", "rb"))

app = Flask(__name__)


@app.route("/home", methods=["POST", "GET"])
def predict():
    if request.method == "POST":
        Database_Fundamentals = request.form.get(
            "Database Fundamentals", default=0, type=int
        )
        Computer_Architecture = request.form.get(
            "Computer Architecture", default=0, type=int
        )
        Distributed_Computing_Systems = request.form.get(
            "Distributed Computing Systems", default=0, type=int
        )
        Cyber_Security = request.form.get("Cyber Security", default=0, type=int)
        Networking = request.form.get("Networking", default=0, type=int)
        Development = request.form.get("Development", default=0, type=int)
        Programming_Skills = request.form.get("Programming Skills", default=0, type=int)
        Project_Management = request.form.get("Project Management", default=0, type=int)
        Computer_Forensics_Fundamentals = request.form.get(
            "Computer Forensics Fundamentals", default=0, type=int
        )
        Technical_Communication = request.form.get(
            "Technical Communication", default=0, type=int
        )
        AI_ML = request.form.get("AI ML", default=0, type=int)
        Software_Engineering = request.form.get(
            "Software Engineering", default=0, type=int
        )
        Business_Analysis = request.form.get("Business Analysis", default=0, type=int)
        Communication_skills = request.form.get(
            "Communication skills", default=0, type=int
        )
        Data_Science = request.form.get("Data Science", default=0, type=int)
        Troubleshooting_skills = request.form.get(
            "Troubleshooting skills", default=0, type=int
        )
        Graphics_Designing = request.form.get("Graphics Designing", default=0, type=int)

        input_query = np.array(
            [
                [
                    Database_Fundamentals,
                    Computer_Architecture,
                    Distributed_Computing_Systems,
                    Cyber_Security,
                    Networking,
                    Development,
                    Programming_Skills,
                    Project_Management,
                    Computer_Forensics_Fundamentals,
                    Technical_Communication,
                    AI_ML,
                    Software_Engineering,
                    Business_Analysis,
                    Communication_skills,
                    Data_Science,
                    Troubleshooting_skills,
                    Graphics_Designing,
                ]
            ]
        )

        result = model.predict(input_query)[0]

        return jsonify({"placement": result})
    else:
        Database_Fundamentals = int(request.args.get("Database Fundamentals"))
        Computer_Architecture = int(request.args.get("Computer Architecture"))
        Distributed_Computing_Systems = int(
            request.args.get("Distributed Computing Systems")
        )
        Cyber_Security = int(request.args.get("Cyber Security"))
        Networking = int(request.args.get("Networking"))
        Development = int(request.args.get("Development"))
        Programming_Skills = int(request.args.get("Programming Skills"))
        Project_Management = int(request.args.get("Project Management"))
        Computer_Forensics_Fundamentals = int(
            request.args.get("Computer Forensics Fundamentals")
        )
        Technical_Communication = int(request.args.get("Technical Communication"))
        AI_ML = int(request.args.get("AI ML"))
        Software_Engineering = int(request.args.get("Software Engineering"))
        Business_Analysis = int(request.args.get("Business Analysis"))
        Communication_skills = int(request.args.get("Communication skills"))
        Data_Science = int(request.args.get("Data Science"))
        Troubleshooting_skills = int(request.args.get("Troubleshooting skills"))
        Graphics_Designing = int(request.args.get("Graphics Designing"))

        input_query = np.array(
            [
                [
                    Database_Fundamentals,
                    Computer_Architecture,
                    Distributed_Computing_Systems,
                    Cyber_Security,
                    Networking,
                    Development,
                    Programming_Skills,
                    Project_Management,
                    Computer_Forensics_Fundamentals,
                    Technical_Communication,
                    AI_ML,
                    Software_Engineering,
                    Business_Analysis,
                    Communication_skills,
                    Data_Science,
                    Troubleshooting_skills,
                    Graphics_Designing,
                ]
            ]
        )

        result = model.predict(input_query)[0]

        return jsonify({"placement": result})


if __name__ == "__main__":
    app.run(debug=True, port=4000)
