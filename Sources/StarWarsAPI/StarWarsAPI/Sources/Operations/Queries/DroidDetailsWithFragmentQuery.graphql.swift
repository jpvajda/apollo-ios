// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class DroidDetailsWithFragmentQuery: GraphQLQuery {
  public static let operationName: String = "DroidDetailsWithFragment"
  public static let document: ApolloAPI.DocumentType = .automaticallyPersisted(
    operationIdentifier: "7277e97563e911ac8f5c91d401028d218aae41f38df014d7fa0b037bb2a2e739",
    definition: .init(
      """
      query DroidDetailsWithFragment($episode: Episode) {
        hero(episode: $episode) {
          __typename
          ...DroidDetails
        }
      }
      """,
      fragments: [DroidDetails.self]
    ))

  public var episode: GraphQLNullable<GraphQLEnum<Episode>>

  public init(episode: GraphQLNullable<GraphQLEnum<Episode>>) {
    self.episode = episode
  }

  public var __variables: Variables? { ["episode": episode] }

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { StarWarsAPI.Objects.Query }
    public static var __selections: [Selection] { [
      .field("hero", Hero?.self, arguments: ["episode": .variable("episode")]),
    ] }

    public var hero: Hero? { __data["hero"] }

    /// Hero
    ///
    /// Parent Type: `Character`
    public struct Hero: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { StarWarsAPI.Interfaces.Character }
      public static var __selections: [Selection] { [
        .inlineFragment(AsDroid.self),
      ] }

      public var asDroid: AsDroid? { _asInlineFragment() }

      /// Hero.AsDroid
      ///
      /// Parent Type: `Droid`
      public struct AsDroid: StarWarsAPI.InlineFragment {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { StarWarsAPI.Objects.Droid }
        public static var __selections: [Selection] { [
          .fragment(DroidDetails.self),
        ] }

        /// What others call this droid
        public var name: String { __data["name"] }
        /// This droid's primary function
        public var primaryFunction: String? { __data["primaryFunction"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public var droidDetails: DroidDetails { _toFragment() }
        }
      }
    }
  }
}
