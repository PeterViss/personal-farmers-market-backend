# frozen_string_literal: true

class UsersController < ApplicationController
  def farmers
    users = User.all
    farmers = users.select do |user|
      return user if user.role == 'farmer'
    end
    render json: farmers.to_json(farmer_users)
  end

  def show
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user = User.find(payload["user_id"])
    if user
      render json: user.to_json(user_show(user)), status: :accepted
    else
      render json: "user not found"
    end
  end

  def posts
    user = User.find(params[:id])
    user.posts
    render json: user.posts.to_json(post_show)
  end

  private

  def post_show
    {
      except: %i[created_at updated_at],
      include: {
        comments: { except: %i[created_at updated_at] },
        category: { except: %i[created_at updated_at] },
        state: { except: %i[created_at updated_at] }
      }
    }
  end

  def farmer_users
    {
      except: %i[created_at updated_at password_digest],
      include: {
        avatar: { except: %i[created_at updated_at] },
        categories: { except: %i[created_at updated_at] },
        followers: %i[created_at updated_at password_digest],
        posts: { except: %i[created_at updated_at] },
        biography: { except: %i[created_at updated_at] }
      }
    }
  end

  def user_show(user)
    if user.role == 'farmer'
      {
        except: %i[created_at updated_at password_digest],
        include: {
          avatar: { except: %i[created_at updated_at] },
          categories: { except: %i[created_at updated_at] },
          followers: %i[created_at updated_at password_digest],
          posts: { except: %i[created_at updated_at] },
          biography: { except: %i[created_at updated_at] }
        }
      }
    else
      {
        except: %i[created_at updated_at password_digest],
        include: {
          avatar: { except: %i[created_at updated_at] },
          followees: {
            except: %i[created_at updated_at password_digest],
            include: {
              avatar: { except: %i[created_at updated_at] },
              posts: {
                except: %i[created_at updated_at],
                include: {
                  category: { except: %i[created_at updated_at] }
                }
              },
              biography: { except: %i[created_at updated_at] },
              categories: { except: %i[created_at updated_at] },
              followers: { except: %i[created_at updated_at password_digest] }
            }
          }
        }
      }
    end
  end
end
