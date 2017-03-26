class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, 
    :validatable, :authentication_keys => {email: true, username: false, role: false}

    validates :username, presence: true, uniqueness: true
    validates :role, presence: true

    has_attached_file :avatar, styles: {
        medium: '300x300>',
        thumb: '100x100>'
    }

    validates_attachment_content_type :avatar,
        content_type: /\Aimage/
    validates_attachment_file_name :avatar,
        matches: [/png\Z/, /jpe?g\Z/, /gif\Z/]
    validates_with AttachmentSizeValidator,
        attributes: :avatar,
        less_than: 1.megabytes
    do_not_validate_attachment_file_type :avatar
    
    has_many :ftus
	has_many :formations, through: :ftus
    
    has_many :etus
	has_many :experiences, through: :etus
    
    has_many :itus
	has_many :interets, through: :itus

    has_many :stes
    has_many :secteurs, through: :stes

    has_many :otes
    has_many :offres, through: :otes
end

