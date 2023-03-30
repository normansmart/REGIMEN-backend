# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding users"
u1 = User.create( first_name:"Norman" , last_name:"Smart" , username:"Ragnosock" , password:"12345" , onboarded:true)

u2 = User.create( first_name:"Cris" , last_name:"Morales" , username:"Entenduu" , password:"12345" , onboarded:false)
u3 = User.create( first_name:"Bop" , last_name:"Bopman" , username:"Boppin" , password:"12345" , onboarded:false)
u4 = User.create( first_name:"Chu" , last_name:"Chavez" , username:"Roenb" , password:"12345" , onboarded:false)
u5 = User.create( first_name:"Alan" , last_name:"Matos" , username:"Mr.Google" , password:"12345" , onboarded:false)
u6 = User.create( first_name:"Qibin" , last_name:"????" , username:"QB" , password:"12345" , onboarded:false)

puts "Setting theme"

s1 = Setting.create(user_id:u1.id , backgroundcolor:"#FFF9F2" , font:"Mulish" , color:"#38383A" )
s2 = Setting.create(user_id:u2.id , backgroundcolor:"#FFF9F2" , font:"Mulish" , color:"#38383A" )

puts "adding friends"
f1 = Friend.create(user_id:u1.id ,friend_id: u2.id )

puts "creating cohorts"
c1 = Cohort.create(name:"Cohort Cavaliers" , tag:"CoCa" , message:"People who love coding" , admin_id:u1.id , join_key:"12345" , private: false)
c2 = Cohort.create(name:"Alan's Google Gang" , tag:"OG-AG" , message:"Google to the moon" , admin_id:u5.id , join_key:"12345" , private: true)
c3 = Cohort.create(name:"HIGH-SOCIETY" , tag:"QBMJ" , message:"Qibin's a pothead" , admin_id:u6.id , join_key:"12345" , private: false)


puts "Creating memberships"
m1 = Membership.create(user_id: u2.id , cohort_id:c1.id)
m2 =  Membership.create(user_id: u1.id , cohort_id:c3.id)
m3 =  Membership.create(user_id: u2.id , cohort_id:c3.id)
m4 =  Membership.create(user_id: u4.id , cohort_id:c1.id)
m5 =  Membership.create(user_id: u6.id , cohort_id:c1.id)

puts "creating project"
p1 = Project.create!( name:"Divebox" , description:"Dropbox clone" , key:"1234" , front_lang:"Reactjs, CSS" , back_lang:"Ruby, Rails" , private:true)
p2 = Project.create!( name:"Bop-Pop" , description:"Souncloud Clone" , key:"1234" , front_lang:"Reactjs" , back_lang:"Ruby, Rails" ,  private:true)
p3 = Project.create!( name:"Weed2gether" , description:"Qibin's a pothead" , key:"1234" , front_lang:"PURE HTML" , back_lang:"Ruby, Rails" ,  private:true)


puts "Assigning Projects..."
a1 = Assignment.create(cohort_id:c1.id , project_id: p1.id , user_id:u1.id)
a2 = Assignment.create(cohort_id:c1.id , project_id: p1.id , user_id:u2.id)
a3 = Assignment.create(cohort_id:c1.id , project_id: p1.id , user_id:u3.id)
a5 = Assignment.create(cohort_id:c1.id , project_id: p2.id , user_id:u1.id)

puts "adding Declarations"
d1 = Commit.create!(user_id:u1.id , project_id:p1.id , title:"First Commit" , language:"javascript",  commit:"import SyntaxHighlighter from 'react-syntax-highlighter'
import { docco } from 'react-syntax-highlighter/dist/esm/styles/hljs'
import CommitCard from './CommitCard'
import '../css/sidebar.css'

function SideBar({ selectedProject, toggle, switcher, commits }) {



    const group = selectedProject.group
   


    const commitCards = commits.map(
        item =>{
            return( 
                <CommitCard key={item.id} commit={item} />
            )
        }
    )



    return (
        <div className='side-bar-container' id={toggle ? null : 'toggle'} >


            <div className='side-bar' >

                <h1> {selectedProject.name} </h1>
                <h2>{group ? group.name : ""} </h2>
                <p> {selectedProject.description} </p>

                <div className='project-lang'>
                    <h3>  {selectedProject.frontend_lang} </h3>
                    <h4> Frontend</h4>
                </div>

                <div className='project-lang'>
                    <h3>  {selectedProject.backend_lang} </h3>
                    <h4> Backend</h4>
                </div>


                <button id='new-commit'> Add New Commit </button>

                <div className="">
                    <h3> Declarations </h3>
                    <h3> Collaborators </h3>
                </div>


                <div className='commit-card'>

              {commitCards}

                </div>
               

            </div>
            <div className='side-bar-cover' onClick={() => switcher()}  >

            </div>

        </div>
    )
}

export default SideBar ")




puts "adding comment"
co1 = Comment.create(user_id:u2.id , commit_id:d1.id , comment:"This is pretty nice" )

puts "adding image"
u1.attachment.attach(io: File.open('app/assets/images/seed_images/eren_background.png'), filename: "eren_background.png", content_type: 'image/png')
puts "Done" 